package com.poverka.app.ui.settings

import android.os.Bundle
import android.view.View
import android.widget.ArrayAdapter
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.R
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.data.model.Town
import com.poverka.app.data.repository.SettingsRepository
import com.poverka.app.databinding.ActivitySettingsBinding
import com.poverka.app.ui.main.MainActivity
import com.poverka.app.util.isValidIp
import kotlinx.coroutines.launch

class SettingsActivity : AppCompatActivity() {

    private lateinit var binding: ActivitySettingsBinding
    private lateinit var prefs: PreferencesManager
    private lateinit var repository: SettingsRepository
    private var townsList: List<Town> = emptyList()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySettingsBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        repository = SettingsRepository(this)

        setupViews()
        loadCurrentValues()
    }

    private fun setupViews() {
        // IP setup
        binding.buttonSetIP.setOnClickListener {
            showIpDialog()
        }

        // Load databases from server
        binding.buttonSettingsLoadServer.setOnClickListener {
            downloadDatabases()
        }

        // Load streets/address
        binding.buttonSettingsLoadAddress.setOnClickListener {
            showTownSelectionDialog()
        }

        // Environment settings
        binding.buttonSetEnvironment.setOnClickListener {
            showEnvironmentDialog()
        }

        // Metrologist name
        binding.buttonSettingsMetrologistName.setOnClickListener {
            showMetrologistDialog()
        }

        // Check APK update
        binding.buttonSettingsCheckApkUpdate.setOnClickListener {
            checkForUpdates()
        }

        // ReSend Protocol (navigates)
        binding.buttonSettingsReSendProtocol.setOnClickListener {
            startActivity(android.content.Intent(this, com.poverka.app.ui.protocol.ReSendProtocolActivity::class.java))
        }

        // Save button
        binding.buttonSave.setOnClickListener {
            saveSettings()
        }
    }

    private fun loadCurrentValues() {
        binding.editIpAddress.setText(prefs.ip)
        binding.editStationNumber.setText(if (prefs.stationNumber > 0) prefs.stationNumber.toString() else "")
        binding.editMetrologistName.setText(prefs.metrologistName)
        binding.textCurrentCity.text = prefs.stationCity.ifEmpty { getString(R.string.not_set) }
        updateEnvironmentDisplay()
    }

    private fun updateEnvironmentDisplay() {
        binding.textEnvironmentValues.text = getString(
            R.string.environment_values_format,
            prefs.environmentTemperature,
            prefs.environmentHumidity
        )
    }

    private fun showIpDialog() {
        val input = android.widget.EditText(this)
        input.setText(prefs.ip)
        input.hint = getString(R.string.settings_ip)
        input.inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_URI

        AlertDialog.Builder(this)
            .setTitle(getString(R.string.enter_ip))
            .setView(input)
            .setPositiveButton(getString(R.string.settings_button_save)) { _, _ ->
                val ip = input.text.toString().trim()
                if (ip.isValidIp()) {
                    prefs.ip = ip
                    MainActivity.IP = ip
                    binding.editIpAddress.setText(ip)
                    Toast.makeText(this, getString(R.string.saved), Toast.LENGTH_SHORT).show()
                } else {
                    Toast.makeText(this, getString(R.string.wrong_ip_format), Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton(getString(R.string.dismiss), null)
            .show()
    }

    private fun downloadDatabases() {
        val station = prefs.stationNumber
        if (station <= 0) {
            Toast.makeText(this, getString(R.string.need_to_set_station), Toast.LENGTH_SHORT).show()
            return
        }

        binding.progressBar.visibility = View.VISIBLE
        binding.buttonSettingsLoadServer.isEnabled = false

        lifecycleScope.launch {
            var success = true
            var errorMsg = ""

            val typesResult = repository.downloadDeviceTypes(station)
            typesResult.onFailure {
                success = false
                errorMsg += getString(R.string.error_occurred_types_loading) + "\n"
            }

            val testsResult = repository.downloadTests(station)
            testsResult.onFailure {
                success = false
                errorMsg += getString(R.string.error_occurred_tests_loading) + "\n"
            }

            binding.progressBar.visibility = View.GONE
            binding.buttonSettingsLoadServer.isEnabled = true

            if (success) {
                Toast.makeText(this@SettingsActivity, getString(R.string.databases_downloaded), Toast.LENGTH_SHORT).show()
            } else {
                Toast.makeText(this@SettingsActivity, errorMsg.trim(), Toast.LENGTH_LONG).show()
            }
        }
    }

    private fun showTownSelectionDialog() {
        val station = prefs.stationNumber
        if (station <= 0) {
            Toast.makeText(this, getString(R.string.need_to_set_station), Toast.LENGTH_SHORT).show()
            return
        }

        binding.progressBar.visibility = View.VISIBLE

        lifecycleScope.launch {
            val result = repository.downloadTowns(station)
            binding.progressBar.visibility = View.GONE

            result.onSuccess { towns ->
                townsList = towns
                if (towns.isEmpty()) {
                    Toast.makeText(this@SettingsActivity, getString(R.string.error_occurred_cities_downloading), Toast.LENGTH_SHORT).show()
                    return@onSuccess
                }
                val names = towns.map { it.name }.toTypedArray()
                AlertDialog.Builder(this@SettingsActivity)
                    .setTitle(getString(R.string.select_city_address))
                    .setItems(names) { _, which ->
                        val town = towns[which]
                        downloadStreets(town)
                    }
                    .setNegativeButton(getString(R.string.dismiss), null)
                    .show()
            }
            result.onFailure {
                Toast.makeText(this@SettingsActivity, getString(R.string.error_occurred_cities_downloading), Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun downloadStreets(town: Town) {
        val station = prefs.stationNumber
        binding.progressBar.visibility = View.VISIBLE

        lifecycleScope.launch {
            val result = repository.downloadStreets(town.id, station)
            binding.progressBar.visibility = View.GONE

            result.onSuccess {
                prefs.selectedCityId = town.id
                prefs.stationCity = town.name
                binding.textCurrentCity.text = town.name
                Toast.makeText(this@SettingsActivity, getString(R.string.address_loaded), Toast.LENGTH_SHORT).show()
            }
            result.onFailure {
                Toast.makeText(this@SettingsActivity, getString(R.string.error_occurred_streets_downloading), Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun showEnvironmentDialog() {
        val view = layoutInflater.inflate(R.layout.dialog_environment, null)
        val editT = view.findViewById<android.widget.EditText>(R.id.editTemperature)
        val editH = view.findViewById<android.widget.EditText>(R.id.editHumidity)
        val editP = view.findViewById<android.widget.EditText>(R.id.editPressure)

        editT.setText(prefs.environmentTemperature.toString())
        editH.setText(prefs.environmentHumidity.toString())

        AlertDialog.Builder(this)
            .setTitle(getString(R.string.settings_button_set_environment))
            .setView(view)
            .setPositiveButton(getString(R.string.settings_button_save)) { _, _ ->
                val t = editT.text.toString().toIntOrNull() ?: 20
                val h = editH.text.toString().toIntOrNull() ?: 50
                prefs.environmentTemperature = t
                prefs.environmentHumidity = h
                updateEnvironmentDisplay()
                Toast.makeText(this, getString(R.string.saved), Toast.LENGTH_SHORT).show()
            }
            .setNegativeButton(getString(R.string.dismiss), null)
            .show()
    }

    private fun showMetrologistDialog() {
        val input = android.widget.EditText(this)
        input.setText(prefs.metrologistName)
        input.hint = getString(R.string.enter_metrologist_name)

        AlertDialog.Builder(this)
            .setTitle(getString(R.string.settings_button_metrologist_name))
            .setView(input)
            .setPositiveButton(getString(R.string.settings_button_save)) { _, _ ->
                prefs.metrologistName = input.text.toString().trim()
                Toast.makeText(this, getString(R.string.saved), Toast.LENGTH_SHORT).show()
            }
            .setNegativeButton(getString(R.string.dismiss), null)
            .show()
    }

    private fun checkForUpdates() {
        val station = prefs.stationNumber
        binding.progressBar.visibility = View.VISIBLE

        lifecycleScope.launch {
            val result = repository.checkApkUpdate(station)
            binding.progressBar.visibility = View.GONE

            result.onSuccess { content ->
                Toast.makeText(this@SettingsActivity, content.ifEmpty { getString(R.string.no_updates_available) }, Toast.LENGTH_SHORT).show()
            }
            result.onFailure {
                Toast.makeText(this@SettingsActivity, getString(R.string.error_occurred_update_checking), Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun saveSettings() {
        val ip = binding.editIpAddress.text.toString().trim()
        val stationStr = binding.editStationNumber.text.toString().trim()
        val metrologist = binding.editMetrologistName.text.toString().trim()

        if (ip.isNotEmpty()) {
            if (!ip.isValidIp()) {
                Toast.makeText(this, getString(R.string.wrong_ip_format), Toast.LENGTH_SHORT).show()
                return
            }
            prefs.ip = ip
            MainActivity.IP = ip
        }

        if (stationStr.isNotEmpty()) {
            val station = stationStr.toIntOrNull()
            if (station != null && station > 0) {
                prefs.stationNumber = station
            }
        }

        if (metrologist.isNotEmpty()) {
            prefs.metrologistName = metrologist
        }

        Toast.makeText(this, getString(R.string.saved), Toast.LENGTH_SHORT).show()
        finish()
    }
}
