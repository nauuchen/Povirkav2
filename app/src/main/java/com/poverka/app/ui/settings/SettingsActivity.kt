package com.poverka.app.ui.settings

import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.PoverkaApp
import com.poverka.app.R
import com.poverka.app.data.local.AppPreferences
import com.poverka.app.data.model.Address
import com.poverka.app.data.model.Town
import com.poverka.app.data.remote.HttpFileClient
import com.poverka.app.data.repository.AddressRepository
import com.poverka.app.data.repository.ProtocolRepository
import com.poverka.app.databinding.ActivitySettingsBinding
import com.poverka.app.ui.common.SearchableSpinnerDialog
import com.poverka.app.util.MyFileReader
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class SettingsActivity : AppCompatActivity() {

    private lateinit var binding: ActivitySettingsBinding
    private lateinit var prefs: AppPreferences
    private lateinit var addressRepository: AddressRepository
    private lateinit var protocolRepository: ProtocolRepository

    private var towns: List<Town> = emptyList()
    private var streets: List<Address> = emptyList()
    private var selectedTown: Town? = null
    private var selectedStreet: Address? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySettingsBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PoverkaApp.instance.preferences
        addressRepository = AddressRepository(this)
        protocolRepository = ProtocolRepository(this)

        setSupportActionBar(binding.toolbar)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.settings)
        }

        loadSavedValues()
        setupListeners()
        loadCachedData()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    private fun loadSavedValues() {
        binding.editIpAddress.setText(prefs.deviceIp)
        binding.editMetrologistName.setText(prefs.metrologistName)
        binding.editEnvTemperature.setText(prefs.envTemperature.toString())
        binding.editEnvHumidity.setText(prefs.envHumidity.toString())
        binding.editEnvPressure.setText(prefs.envPressure.toString())

        val townName = prefs.selectedTownName
        if (townName.isNotEmpty()) {
            binding.buttonSelectTown.text = townName
        }
    }

    private fun loadCachedData() {
        towns = addressRepository.loadCachedTowns()
        streets = addressRepository.loadCachedStreets()
        if (streets.isNotEmpty()) {
            val city = prefs.loadedCity
            if (city.isNotEmpty()) {
                binding.textAddressStatus.text = getString(R.string.address_loaded)
            }
        }
    }

    private fun setupListeners() {
        binding.buttonSave.setOnClickListener { saveSettings() }
        binding.buttonLoadTowns.setOnClickListener { loadTowns() }
        binding.buttonLoadStreets.setOnClickListener { loadStreets() }
        binding.buttonLoadTypes.setOnClickListener { loadTypesDb() }
        binding.buttonLoadTests.setOnClickListener { loadTestsDb() }
        binding.buttonSelectTown.setOnClickListener { showTownPicker() }
        binding.buttonCheckUpdate.setOnClickListener { checkUpdate() }
    }

    private fun saveSettings() {
        val ip = binding.editIpAddress.text?.toString()?.trim() ?: ""
        if (ip.isEmpty()) {
            binding.editIpAddress.error = getString(R.string.enter_ip)
            return
        }
        prefs.deviceIp = ip
        prefs.metrologistName = binding.editMetrologistName.text?.toString()?.trim() ?: ""

        binding.editEnvTemperature.text?.toString()?.toIntOrNull()?.let {
            prefs.envTemperature = it
        }
        binding.editEnvHumidity.text?.toString()?.toIntOrNull()?.let {
            prefs.envHumidity = it
        }
        binding.editEnvPressure.text?.toString()?.toIntOrNull()?.let {
            prefs.envPressure = it
        }

        selectedTown?.let {
            prefs.selectedTownId = it.id
            prefs.selectedTownName = it.name
        }

        Toast.makeText(this, R.string.settings_saved, Toast.LENGTH_SHORT).show()
        finish()
    }

    private fun loadTowns() {
        setLoading(true)
        val stationNumber = getStationNumber()
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                val client = HttpFileClient()
                client.downloadFromHeadServer(
                    "getsprtown?equipmentType=1&serial=%03d".format(stationNumber)
                )
            }
            setLoading(false)
            result.fold(
                onSuccess = { bytes ->
                    val json = bytes.toString(Charsets.UTF_8)
                    MyFileReader.writeInternalFile(this@SettingsActivity, "towns.json", json)
                    towns = addressRepository.loadCachedTowns()
                    Toast.makeText(this@SettingsActivity, R.string.cities_loaded, Toast.LENGTH_SHORT).show()
                },
                onFailure = { e ->
                    Toast.makeText(this@SettingsActivity, 
                        getString(R.string.error_occurred_cities_downloading), 
                        Toast.LENGTH_LONG).show()
                }
            )
        }
    }

    private fun loadStreets() {
        val townId = prefs.selectedTownId
        if (townId < 0) {
            Toast.makeText(this, R.string.select_town_first, Toast.LENGTH_SHORT).show()
            return
        }
        setLoading(true)
        val stationNumber = getStationNumber()
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                val client = HttpFileClient()
                client.downloadFromHeadServer(
                    "getsprstreet?townId=%d&equipmentType=1&serial=%03d".format(townId, stationNumber)
                )
            }
            setLoading(false)
            result.fold(
                onSuccess = { bytes ->
                    val json = bytes.toString(Charsets.UTF_8)
                    MyFileReader.writeInternalFile(this@SettingsActivity, "address.json", json)
                    streets = addressRepository.loadCachedStreets()
                    val name = prefs.selectedTownName
                    prefs.loadedCity = name
                    binding.textAddressStatus.text = getString(R.string.address_loaded)
                    Toast.makeText(this@SettingsActivity, R.string.address_loaded, Toast.LENGTH_SHORT).show()
                },
                onFailure = { e ->
                    Toast.makeText(this@SettingsActivity, 
                        getString(R.string.error_occurred_streets_downloading), 
                        Toast.LENGTH_LONG).show()
                }
            )
        }
    }

    private fun loadTypesDb() {
        setLoading(true)
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                val client = HttpFileClient()
                client.downloadFromHeadServer("device-types/download-simple?device-class=8")
            }
            setLoading(false)
            result.fold(
                onSuccess = { bytes ->
                    MyFileReader.writeInternalFile(this@SettingsActivity, "types.json", bytes)
                    Toast.makeText(this@SettingsActivity, 
                        getString(R.string.file_loaded, "types.json"), 
                        Toast.LENGTH_SHORT).show()
                },
                onFailure = { e ->
                    Toast.makeText(this@SettingsActivity, 
                        getString(R.string.error_occurred_types_loading), 
                        Toast.LENGTH_LONG).show()
                }
            )
        }
    }

    private fun loadTestsDb() {
        setLoading(true)
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                val client = HttpFileClient()
                client.downloadFromHeadServer("ver-tests/download?equipment-type=1")
            }
            setLoading(false)
            result.fold(
                onSuccess = { bytes ->
                    MyFileReader.writeInternalFile(this@SettingsActivity, "tests.json", bytes)
                    Toast.makeText(this@SettingsActivity, 
                        getString(R.string.file_loaded, "tests.json"), 
                        Toast.LENGTH_SHORT).show()
                },
                onFailure = { e ->
                    Toast.makeText(this@SettingsActivity, 
                        getString(R.string.error_occurred_tests_loading), 
                        Toast.LENGTH_LONG).show()
                }
            )
        }
    }

    private fun showTownPicker() {
        if (towns.isEmpty()) {
            Toast.makeText(this, R.string.load_towns_first, Toast.LENGTH_SHORT).show()
            return
        }
        SearchableSpinnerDialog(this, towns.map { it.name }) { index ->
            val town = towns[index]
            selectedTown = town
            binding.buttonSelectTown.text = town.name
            prefs.selectedTownId = town.id
            prefs.selectedTownName = town.name
        }.show()
    }

    private fun checkUpdate() {
        setLoading(true)
        lifecycleScope.launch {
            val result = protocolRepository.checkForUpdate()
            setLoading(false)
            result.fold(
                onSuccess = { version ->
                    Toast.makeText(this@SettingsActivity, 
                        getString(R.string.firmware_update_available, version), 
                        Toast.LENGTH_LONG).show()
                },
                onFailure = { e ->
                    Toast.makeText(this@SettingsActivity, 
                        getString(R.string.error_occurred_update_checking), 
                        Toast.LENGTH_LONG).show()
                }
            )
        }
    }

    private fun setLoading(loading: Boolean) {
        binding.progressBar.visibility = if (loading) View.VISIBLE else View.GONE
        binding.buttonSave.isEnabled = !loading
        binding.buttonLoadTowns.isEnabled = !loading
        binding.buttonLoadStreets.isEnabled = !loading
        binding.buttonLoadTypes.isEnabled = !loading
        binding.buttonLoadTests.isEnabled = !loading
    }

    private fun getStationNumber(): Int {
        return binding.editIpAddress.text?.toString()
            ?.substringAfterLast(".")?.toIntOrNull() ?: 1
    }
}
