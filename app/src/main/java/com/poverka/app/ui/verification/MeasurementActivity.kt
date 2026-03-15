package com.poverka.app.ui.verification

import android.graphics.BitmapFactory
import android.graphics.Color
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.View
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.R
import com.poverka.app.data.api.HeadServerApi
import com.poverka.app.data.api.LocalDeviceApi
import com.poverka.app.data.local.FileStorage
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.data.model.CounterVerification
import com.poverka.app.data.model.MeasurementResults
import com.poverka.app.databinding.ActivityMeasurementBinding
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlinx.coroutines.Dispatchers
import org.json.JSONObject
import java.io.File

class MeasurementActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMeasurementBinding
    private lateinit var prefs: PreferencesManager
    private lateinit var verification: CounterVerification
    private var localApi: LocalDeviceApi? = null
    private var headApi: HeadServerApi = HeadServerApi()
    private var refreshJob: Job? = null
    private var freezeCheckJob: Job? = null
    private var currentPage = Pages.TEST
    private var currentMeasNumber = 0

    // Pressure warning colors (softened as per requirements)
    companion object {
        const val EXTRA_VERIFICATION = "verification"
        private val COLOR_RED = Color.parseColor("#E53935")    // softened red
        private val COLOR_GREEN = Color.parseColor("#43A047")  // softened green
        private val COLOR_BLUE = Color.parseColor("#1E88E5")   // softened blue

        private const val PHOTO_REFRESH_MS = 2_000L
        private const val FREEZE_TIMEOUT_MS = 60_000L
    }

    enum class Pages {
        TEST, PHOTO, RESULT, FINISH
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMeasurementBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)

        @Suppress("DEPRECATION")
        verification = intent.getParcelableExtra(EXTRA_VERIFICATION) ?: CounterVerification()

        val ip = com.poverka.app.ui.main.MainActivity.IP
        if (ip.isNotEmpty()) {
            localApi = LocalDeviceApi(ip)
        }

        setupViews()
        startMeasurement()
        startPhotoRefresh()
    }

    override fun onDestroy() {
        super.onDestroy()
        refreshJob?.cancel()
        freezeCheckJob?.cancel()
    }

    private fun setupViews() {
        // Cancel button
        binding.floatingActionButton.setOnClickListener {
            showCancelDialog()
        }

        // Start/next test button
        binding.buttonTestStart.setOnClickListener {
            handleStartButton()
        }

        // Repeat measurement
        binding.buttonTestRepeat.setOnClickListener {
            showRepeatConfirmDialog()
        }

        // Next measurement
        binding.buttonTestNext.setOnClickListener {
            handleNextMeasurement()
        }

        updateTestInfo()
        updatePressureDisplay()
    }

    private fun startMeasurement() {
        lifecycleScope.launch {
            // Request measurement start from local device
            val api = localApi ?: return@launch
            val result = api.downloadString("start_measurement")
            result.onSuccess { response ->
                try {
                    val json = JSONObject(response)
                    verification.verificationNumberNew = json.optInt("cur_verifs", 0)
                    verification.verificationNumberToday = json.optInt("number_today", 0)
                    updateTestInfo()
                } catch (e: Exception) {
                    // Continue anyway
                }
            }
        }
    }

    private fun handleStartButton() {
        when (currentPage) {
            Pages.TEST -> startCurrentTest()
            Pages.RESULT -> moveToNextTest()
            Pages.FINISH -> finishVerification()
            else -> {}
        }
    }

    private fun startCurrentTest() {
        val api = localApi ?: return
        binding.buttonTestStart.isEnabled = false
        binding.progressBar.progress = 0

        lifecycleScope.launch {
            val result = api.downloadString("1/current/meast_${currentMeasNumber}.json")
            result.onSuccess { json ->
                parseAndDisplayMeasurement(json)
            }
            result.onFailure {
                binding.buttonTestStart.isEnabled = true
                Toast.makeText(this@MeasurementActivity, getString(R.string.error_message, it.message), Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun parseAndDisplayMeasurement(json: String) {
        try {
            val obj = JSONObject(json)
            val curCon = obj.optDouble("cur_con", 0.0).toFloat()
            val avgCon = obj.optDouble("average_con", 0.0).toFloat()
            val result = obj.optInt("result", 0)
            val progress = obj.optInt("progress", 0)
            val timeLeft = obj.optInt("time_left", 0)

            binding.textCurCon.text = getString(R.string.consumption_format, curCon)
            binding.textAvrgCon.text = getString(R.string.avg_consumption_format, avgCon)
            binding.progressBar.progress = progress
            binding.textTimeLeft.text = getString(R.string.time_left_format, timeLeft)

            // Color based on result
            val resultColor = when (result) {
                1 -> COLOR_GREEN
                2 -> COLOR_RED
                else -> Color.BLACK
            }
            binding.textCurCon.setTextColor(resultColor)
            binding.buttonTestStart.isEnabled = true
        } catch (e: Exception) {
            binding.buttonTestStart.isEnabled = true
        }
    }

    private fun moveToNextTest() {
        currentMeasNumber++
        currentPage = Pages.TEST
        updateTestInfo()
    }

    private fun handleNextMeasurement() {
        showConfirmDialog(
            title = getString(R.string.confirm_your_choise),
            message = getString(R.string.next_measurement_confirm)
        ) {
            moveToNextTest()
        }
    }

    private fun showRepeatConfirmDialog() {
        // UNLIMITED retry attempts (by design requirement) — no counter is shown.
        // The dialog asks for confirmation but does not impose any retry limit.
        AlertDialog.Builder(this)
            .setTitle(getString(R.string.confirm_your_choise))
            .setMessage(getString(R.string.repeat_measurement_confirm))
            .setPositiveButton(getString(R.string.yes)) { _, _ ->
                repeatCurrentMeasurement()
            }
            .setNegativeButton(getString(R.string.no), null)
            .show()
    }

    private fun repeatCurrentMeasurement() {
        currentPage = Pages.TEST
        startCurrentTest()
    }

    private fun finishVerification() {
        lifecycleScope.launch {
            binding.progressBar.visibility = View.VISIBLE
            uploadResults()
        }
    }

    private suspend fun uploadResults() {
        val api = headApi
        val station = prefs.stationNumber

        // Create result JSON
        val resultJson = buildResultJson()
        val tempFile = File(cacheDir, "result_%03d.json".format(station))
        tempFile.writeText(resultJson)

        val uploadResult = api.upload(
            "1/current/meast_%d%d.json".format(station, verification.verificationNumberNew),
            tempFile
        )

        withContext(Dispatchers.Main) {
            binding.progressBar.visibility = View.GONE
            uploadResult.onSuccess {
                Toast.makeText(this@MeasurementActivity, getString(R.string.protocol_sent), Toast.LENGTH_LONG).show()
                finish()
            }
            uploadResult.onFailure {
                Toast.makeText(this@MeasurementActivity, getString(R.string.error_message, it.message), Toast.LENGTH_LONG).show()
            }
        }
    }

    private fun buildResultJson(): String {
        val obj = JSONObject()
        obj.put("id", verification.id)
        obj.put("counter_number", verification.counterNumber)
        obj.put("start_volume", verification.initialVolume)
        obj.put("production_year", verification.productionYear)
        obj.put("type_id", verification.typeId)
        obj.put("test_name", verification.testName)
        obj.put("verif_number", verification.verificationNumberNew)
        obj.put("verif_today", verification.verificationNumberToday)
        obj.put("latitude", verification.latitude)
        obj.put("longitude", verification.longitude)
        obj.put("temperature", verification.environmentT)
        obj.put("humidity", verification.environmentH)
        obj.put("pressure", verification.environmentP)
        obj.put("water_temperature", verification.waterTemperature)
        obj.put("inner_temperature", verification.innerTemperature)
        obj.put("inner_humidity", verification.innerHumidity)
        obj.put("station", verification.stationNumber)
        obj.put("local", verification.local)
        return obj.toString()
    }

    private fun updateTestInfo() {
        binding.textTestName.text = getString(R.string.test_format, currentMeasNumber + 1)
        binding.textTestSettings.text = getString(R.string.test_settings_default)
    }

    private fun updatePressureDisplay() {
        val pressure = verification.environmentP
        val pressureView = binding.textPressure
        pressureView.text = getString(R.string.pressure_format, pressure)

        // Color-coded pressure warning
        val color = when {
            pressure < 95 -> COLOR_BLUE
            pressure > 105 -> COLOR_RED
            else -> COLOR_GREEN
        }
        pressureView.setTextColor(color)
    }

    private fun startPhotoRefresh() {
        refreshJob = lifecycleScope.launch {
            while (true) {
                delay(PHOTO_REFRESH_MS)
                refreshCurrentPhoto()
            }
        }
    }

    private suspend fun refreshCurrentPhoto() {
        val api = localApi ?: return
        val result = api.downloadFile("current_photo.jpg")
        result.onSuccess { bytes ->
            if (bytes.isNotEmpty()) {
                withContext(Dispatchers.Main) {
                    val bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
                    if (bitmap != null) {
                        binding.imageMeasurement.setImageBitmap(bitmap)
                    }
                }
            }
        }
    }

    private fun showCancelDialog() {
        AlertDialog.Builder(this)
            .setTitle(getString(R.string.confirm_your_choise))
            .setMessage(getString(R.string.cancel_measurement_confirm))
            .setPositiveButton(getString(R.string.yes)) { _, _ ->
                finish()
            }
            .setNegativeButton(getString(R.string.no), null)
            .show()
    }

    private fun showConfirmDialog(title: String, message: String, onConfirm: () -> Unit) {
        AlertDialog.Builder(this)
            .setTitle(title)
            .setMessage(message)
            .setPositiveButton(getString(R.string.yes)) { _, _ -> onConfirm() }
            .setNegativeButton(getString(R.string.no), null)
            .show()
    }
}
