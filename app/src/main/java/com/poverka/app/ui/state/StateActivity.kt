package com.poverka.app.ui.state

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.PoverkaApp
import com.poverka.app.R
import com.poverka.app.data.model.CounterVerification
import com.poverka.app.data.remote.HttpFileClient
import com.poverka.app.databinding.ActivityStateBinding
import com.poverka.app.ui.client.ClientActivity
import com.poverka.app.ui.main.MainActivity
import com.poverka.app.util.MyConsoleParser
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.util.Calendar

class StateActivity : AppCompatActivity() {

    private lateinit var binding: ActivityStateBinding
    private var ip: String = ""
    private var local: Int = 0
    private var selectedId: Int = -1
    private var dnTypeNumber: Int = 0

    companion object {
        const val EXTRA_COUNTER_VERIFICATION = "counter_verification"
        const val EXTRA_TASK_ID = "task_id"
        const val EXTRA_PERSONAL_ACCOUNT = "personal_account"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityStateBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setSupportActionBar(binding.toolbar)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.counter_state)
        }

        ip = intent.getStringExtra(MainActivity.EXTRA_IP) ?: PoverkaApp.instance.preferences.deviceIp
        local = intent.getIntExtra(MainActivity.EXTRA_LOCAL, 1)
        selectedId = intent.getIntExtra(MainActivity.EXTRA_SELECTED_ID, -1)

        setupViews()
        setupSpinner()
        loadStationData()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    private fun setupViews() {
        binding.buttonNext.setOnClickListener { onNextClicked() }
        binding.buttonScanBarcode.setOnClickListener { onScanBarcodeClicked() }

        // Pre-fill personal account if from task
        intent.getStringExtra(EXTRA_PERSONAL_ACCOUNT)?.let {
            binding.editPersonalAccount.setText(it)
        }

        // Default year to current year
        val currentYear = Calendar.getInstance().get(Calendar.YEAR)
        binding.editYear.setText(currentYear.toString())
    }

    private fun setupSpinner() {
        // DN type spinner (DN15, DN20, DN25, DN32, DN40, DN50, DN65, DN80, DN100)
        val dnTypes = resources.getStringArray(R.array.dn_types)
        val adapter = ArrayAdapter(this, android.R.layout.simple_spinner_item, dnTypes).apply {
            setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        }
        binding.spinnerDnType.adapter = adapter
        binding.spinnerDnType.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>?, view: View?, position: Int, id: Long) {
                dnTypeNumber = position
            }
            override fun onNothingSelected(parent: AdapterView<*>?) {}
        }
    }

    private fun loadStationData() {
        binding.progressBar.visibility = View.VISIBLE
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                val client = HttpFileClient()
                client.showFromDevice(ip, "request")
            }
            binding.progressBar.visibility = View.GONE
            result.fold(
                onSuccess = { bytes ->
                    parseStationData(bytes.toString(Charsets.UTF_8))
                },
                onFailure = { e ->
                    binding.textStationStatus.text = getString(R.string.error_occurred_no_station)
                    binding.textStationStatus.setTextColor(getColor(R.color.warning_red))
                }
            )
        }
    }

    private fun parseStationData(json: String) {
        val obj = MyConsoleParser.parseJsonSafe(json) ?: return
        val stationNumber = MyConsoleParser.getIntOrDefault(obj, "station")
        val verStation = MyConsoleParser.getStringOrDefault(obj, "ver_soft")
        val battCharge = obj.optDouble("charge_batt", 0.0)
        val innerTemp = obj.optDouble("temper_dev", 0.0)
        val innerHumidity = obj.optDouble("hum_dev", 0.0)
        val calibDate = MyConsoleParser.getStringOrDefault(obj, "date")

        binding.textStationInfo.text = buildString {
            append(getString(R.string.station_number_format, stationNumber))
            append("\n")
            append(getString(R.string.version_station_format, verStation))
            append("\n")
            append(getString(R.string.battery_charge, battCharge.toInt()))
            append("\n")
            append(getString(R.string.calibration_date, calibDate))
        }
        binding.textStationStatus.text = getString(R.string.connected)
        binding.textStationStatus.setTextColor(getColor(R.color.warning_green))
    }

    private fun onScanBarcodeClicked() {
        barcodeResultLauncher.launch(
            com.journeyapps.barcodescanner.ScanOptions().apply {
                setDesiredBarcodeFormats(com.journeyapps.barcodescanner.ScanOptions.ALL_CODE_TYPES)
                setPrompt(getString(R.string.scan_barcode_hint))
                setBeepEnabled(true)
                setCameraId(0)
            }
        )
    }

    private val barcodeResultLauncher = registerForActivityResult(
        com.journeyapps.barcodescanner.ScanContract()
    ) { result ->
        result?.contents?.let { content ->
            binding.editCounterNumber.setText(content)
        }
    }

    private fun onNextClicked() {
        val counterNumber = binding.editCounterNumber.text?.toString()?.trim() ?: ""
        val volumeStr = binding.editVolume.text?.toString()?.trim() ?: ""
        val yearStr = binding.editYear.text?.toString()?.trim() ?: ""
        val personalAccount = binding.editPersonalAccount.text?.toString()?.trim() ?: ""

        if (counterNumber.isEmpty()) {
            binding.editCounterNumber.error = getString(R.string.required_field)
            return
        }
        if (volumeStr.length != 5) {
            Toast.makeText(this, R.string.error_volume_size, Toast.LENGTH_SHORT).show()
            return
        }
        val volume = volumeStr.toIntOrNull() ?: run {
            Toast.makeText(this, R.string.required_field, Toast.LENGTH_SHORT).show()
            return
        }
        if (yearStr.length != 4) {
            Toast.makeText(this, R.string.error_year, Toast.LENGTH_SHORT).show()
            return
        }
        val year = yearStr.toIntOrNull() ?: run {
            Toast.makeText(this, R.string.check_year, Toast.LENGTH_SHORT).show()
            return
        }

        val prefs = PoverkaApp.instance.preferences
        val cv = CounterVerification(
            id = if (selectedId > 0) selectedId.toString() else "0",
            personalAccount = personalAccount,
            local = local,
            environmentT = prefs.envTemperature,
            environmentH = prefs.envHumidity,
            environmentP = prefs.envPressure
        ).also {
            it.setCounterInfo(counterNumber, volume, year, dnTypeNumber)
        }

        val intent = Intent(this, ClientActivity::class.java).apply {
            putExtra(ClientActivity.EXTRA_CV, cv)
            putExtra(MainActivity.EXTRA_IP, ip)
        }
        startActivity(intent)
    }
}
