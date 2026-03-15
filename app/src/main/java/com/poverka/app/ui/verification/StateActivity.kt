package com.poverka.app.ui.verification

import android.content.Intent
import android.graphics.BitmapFactory
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.R
import com.poverka.app.data.api.LocalDeviceApi
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.data.model.CounterVerification
import com.poverka.app.databinding.ActivityStateBinding
import com.poverka.app.ui.image.ImageActivity
import com.poverka.app.ui.main.MainActivity
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.json.JSONObject

class StateActivity : AppCompatActivity() {

    private lateinit var binding: ActivityStateBinding
    private lateinit var prefs: PreferencesManager
    private var localApi: LocalDeviceApi? = null
    private var verification: CounterVerification = CounterVerification()
    private var freezeCheckJob: Job? = null
    private var lastActivityTime = System.currentTimeMillis()
    private var currentPhotoBytes: ByteArray? = null

    companion object {
        const val RESULT_COUNTER_INFO = 1001
        private const val FREEZE_TIMEOUT_MS = 30_000L
        private const val PHOTO_REFRESH_INTERVAL_MS = 3_000L
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityStateBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)

        val ip = MainActivity.IP
        if (ip.isNotEmpty()) {
            localApi = LocalDeviceApi(ip)
        }

        verification.environmentT = prefs.environmentTemperature
        verification.environmentH = prefs.environmentHumidity
        verification.stationNumber = prefs.stationNumber
        verification.local = if (prefs.isLocal) 1 else 0

        setupViews()
        loadCurrentState()
        startPhotoRefresh()
    }

    override fun onDestroy() {
        super.onDestroy()
        freezeCheckJob?.cancel()
    }

    private fun setupViews() {
        binding.imageStateView.setOnClickListener {
            openImageActivity()
        }

        binding.buttonShowState.setOnClickListener {
            loadCurrentState()
        }

        binding.buttonRepeatPhoto.setOnClickListener {
            openImageActivity()
        }

        binding.buttonSelectTest.setOnClickListener {
            openTestSelection()
        }

        binding.buttonStateStart.setOnClickListener {
            startMeasurement()
        }

        updateTemperatureDisplay()
    }

    private fun updateTemperatureDisplay() {
        binding.textTemperature.text = getString(
            R.string.environment_short,
            prefs.environmentTemperature,
            prefs.environmentHumidity
        )
    }

    private fun loadCurrentState() {
        val api = localApi ?: return

        binding.progressIndicator.visibility = View.VISIBLE
        lifecycleScope.launch {
            val result = api.downloadString("state.json")
            binding.progressIndicator.visibility = View.GONE

            result.onSuccess { json ->
                try {
                    val obj = JSONObject(json)
                    val temp = obj.optDouble("temperature", 0.0).toFloat()
                    val hum = obj.optDouble("humidity", 0.0).toFloat()
                    verification.innerTemperature = temp
                    verification.innerHumidity = hum
                    verification.batteryCharge = obj.optDouble("charge_batt", 0.0).toFloat()
                    verification.verStation = obj.optString("ver_soft", "")
                    verification.currentStationTime = obj.optInt("date_time", 0)
                    binding.textFileName.text = getString(
                        R.string.station_state_format,
                        temp, hum, verification.batteryCharge.toInt()
                    )
                    lastActivityTime = System.currentTimeMillis()
                } catch (e: Exception) {
                    binding.textFileName.text = getString(R.string.error_occurred_no_station)
                }
            }
            result.onFailure {
                binding.textFileName.text = getString(R.string.error_occurred_no_station)
            }
        }
    }

    private fun startPhotoRefresh() {
        lifecycleScope.launch {
            while (true) {
                delay(PHOTO_REFRESH_INTERVAL_MS)
                refreshPhoto()
            }
        }
    }

    private suspend fun refreshPhoto() {
        val api = localApi ?: return
        val result = api.downloadFile("current_photo.jpg")
        result.onSuccess { bytes ->
            if (bytes.isNotEmpty()) {
                currentPhotoBytes = bytes
                withContext(Dispatchers.Main) {
                    val bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
                    if (bitmap != null) {
                        binding.imageStateView.setImageBitmap(bitmap)
                    }
                }
            }
        }
    }

    private fun openImageActivity() {
        val intent = Intent(this, ImageActivity::class.java)
        intent.putExtra(ImageActivity.EXTRA_LAYOUT_TYPE, ImageActivity.LAYOUT_COUNTER)
        startActivityForResult(intent, RESULT_COUNTER_INFO)
    }

    private fun openTestSelection() {
        Toast.makeText(this, getString(R.string.select_test), Toast.LENGTH_SHORT).show()
        // Test selection would open a dialog with available tests from tests.json
        loadTestsAndShowDialog()
    }

    private fun loadTestsAndShowDialog() {
        val testsJson = com.poverka.app.data.local.FileStorage.readInternalFile(this, "tests.json")
        if (testsJson == null) {
            Toast.makeText(this, getString(R.string.need_to_load_tests), Toast.LENGTH_SHORT).show()
            return
        }
        // Show test selection dialog - simplified
        Toast.makeText(this, getString(R.string.test_selected), Toast.LENGTH_SHORT).show()
    }

    private fun startMeasurement() {
        if (verification.counterNumber.isEmpty()) {
            Toast.makeText(this, getString(R.string.need_counter_info), Toast.LENGTH_SHORT).show()
            return
        }

        val intent = Intent(this, MeasurementActivity::class.java)
        intent.putExtra(MeasurementActivity.EXTRA_VERIFICATION, verification)
        startActivity(intent)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == RESULT_COUNTER_INFO && resultCode == RESULT_OK) {
            data?.let { intent ->
                val counterNumber = intent.getStringExtra(ImageActivity.RESULT_COUNTER_NUMBER) ?: ""
                val volume = intent.getIntExtra(ImageActivity.RESULT_VOLUME, 0)
                val year = intent.getIntExtra(ImageActivity.RESULT_YEAR, 0)
                val dnType = intent.getIntExtra(ImageActivity.RESULT_DN_TYPE, 0)
                verification.setCounterInfo(counterNumber, volume, year, dnType)
                binding.textFileName.text = getString(
                    R.string.counter_info_format,
                    counterNumber, volume, year
                )
            }
        }
    }
}
