package com.poverka.app.ui.measurement

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.widget.Toast
import androidx.activity.addCallback
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.PoverkaApp
import com.poverka.app.R
import com.poverka.app.data.model.CounterVerification
import com.poverka.app.data.model.MeasurementResults
import com.poverka.app.data.model.MeasurementSettings
import com.poverka.app.data.remote.HttpFileClient
import com.poverka.app.data.repository.ProtocolRepository
import com.poverka.app.databinding.ActivityMeasurementBinding
import com.poverka.app.ui.image.ImageActivity
import com.poverka.app.ui.main.MainActivity
import com.poverka.app.util.MyConsoleParser
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.json.JSONObject

class MeasurementActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMeasurementBinding
    private var cv: CounterVerification? = null
    private var ip: String = ""
    private var currentPage: Pages = Pages.CONNECT
    private var freezeCheckerJob: Job? = null
    private var pollingJob: Job? = null
    private lateinit var protocolRepository: ProtocolRepository
    private val handler = Handler(Looper.getMainLooper())

    // Measurement state
    private var currentMeasurementNumber: Int = 0
    private var currentReiteration: Int = 0
    private var lastJson: String = ""

    enum class Pages {
        CONNECT, MEASUREMENT, FINISH
    }

    companion object {
        const val EXTRA_CV = "counter_verification"
        private const val FREEZE_THRESHOLD_MS = 5000L
        private const val POLLING_INTERVAL_MS = 500L
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMeasurementBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setSupportActionBar(binding.toolbar)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.verification)
        }

        cv = intent.getParcelableExtra(EXTRA_CV)
        ip = intent.getStringExtra(MainActivity.EXTRA_IP) ?: PoverkaApp.instance.preferences.deviceIp
        protocolRepository = ProtocolRepository(this)

        // Handle back navigation with confirmation dialog
        onBackPressedDispatcher.addCallback(this) {
            showExitConfirmation()
        }

        setupViews()
        navigateTo(Pages.CONNECT)
        startPolling()
    }

    override fun onDestroy() {
        super.onDestroy()
        stopPolling()
    }

    override fun onSupportNavigateUp(): Boolean {
        showExitConfirmation()
        return true
    }

    private fun setupViews() {
        binding.buttonAction.setOnClickListener { onActionButtonClicked() }
        binding.imageStart.setOnClickListener { onStartImageClicked() }
        binding.imageFinish.setOnClickListener { onFinishImageClicked() }
        binding.buttonRepeatPhoto.setOnClickListener { onRepeatPhotoClicked() }
    }

    private fun startPolling() {
        pollingJob = lifecycleScope.launch(Dispatchers.IO) {
            while (isActive) {
                try {
                    val result = HttpFileClient().showFromDevice(ip, "1/current/system.json")
                    result.getOrNull()?.let { bytes ->
                        val json = bytes.toString(Charsets.UTF_8)
                        if (json != lastJson) {
                            lastJson = json
                            withContext(Dispatchers.Main) {
                                updateUIFromJson(json)
                            }
                        }
                    }
                } catch (e: Exception) {
                    // Connection issue - shown in UI
                }
                delay(POLLING_INTERVAL_MS)
            }
        }
    }

    private fun stopPolling() {
        pollingJob?.cancel()
        pollingJob = null
        freezeCheckerJob?.cancel()
        freezeCheckerJob = null
    }

    private fun updateUIFromJson(json: String) {
        val obj = MyConsoleParser.parseJsonSafe(json) ?: return
        cv?.let { counterVer ->
            // Update battery, temperature, connection status from station
            val battCharge = obj.optDouble("charge_batt", 0.0).toFloat()
            counterVer.batteryCharge = battCharge
            counterVer.isOnline = 1

            val finish = obj.optInt("finish", 0)
            val action = obj.optInt("action", 0)
            counterVer.action = action

            binding.textStatusInfo.text = buildString {
                append(getString(R.string.battery_charge, battCharge.toInt()))
                val innerTemp = obj.optDouble("temper_dev", 0.0)
                append(getString(R.string.temperature_inner_format, innerTemp))
            }

            // Check measurement state
            when {
                finish == 1 -> onMeasurementFinished(obj, counterVer)
                action == 1 -> {
                    navigateTo(Pages.MEASUREMENT)
                    updateMeasurementDisplay(obj)
                }
                else -> navigateTo(Pages.CONNECT)
            }
        }
    }

    private fun navigateTo(page: Pages) {
        currentPage = page
        when (page) {
            Pages.CONNECT -> {
                binding.viewConnect.visibility = View.VISIBLE
                binding.viewMeasurement.visibility = View.GONE
                binding.viewFinish.visibility = View.GONE
                binding.buttonAction.text = getString(R.string.connected)
            }
            Pages.MEASUREMENT -> {
                binding.viewConnect.visibility = View.GONE
                binding.viewMeasurement.visibility = View.VISIBLE
                binding.viewFinish.visibility = View.GONE
                binding.buttonAction.text = getString(R.string.finish)
                startFreezeChecker()
            }
            Pages.FINISH -> {
                binding.viewConnect.visibility = View.GONE
                binding.viewMeasurement.visibility = View.GONE
                binding.viewFinish.visibility = View.VISIBLE
                binding.buttonAction.text = getString(R.string.save_and_exit)
                stopPolling()
            }
        }
    }

    private fun startFreezeChecker() {
        freezeCheckerJob?.cancel()
        var lastUpdateTime = System.currentTimeMillis()
        freezeCheckerJob = lifecycleScope.launch {
            while (isActive) {
                delay(FREEZE_THRESHOLD_MS)
                if (System.currentTimeMillis() - lastUpdateTime > FREEZE_THRESHOLD_MS) {
                    withContext(Dispatchers.Main) {
                        binding.textFreezeWarning.visibility = View.VISIBLE
                        binding.textFreezeWarning.text = getString(R.string.delta_temperature_fail)
                    }
                }
            }
        }
    }

    private fun onMeasurementFinished(obj: JSONObject, counterVer: CounterVerification) {
        val curVerifs = obj.optInt("cur_verifs", 0)
        counterVer.verificationNumberNew = curVerifs

        // Get measurement result
        val result = parseMeasurementResult(obj)
        counterVer.measResults.add(result)

        if (result.result == MeasurementResults.RESULT_VALID) {
            // Measurement passed - show success
            binding.textMeasurementResult.text = getString(R.string.consumption_valid)
            binding.textMeasurementResult.setTextColor(getColor(R.color.warning_green))
            navigateTo(Pages.FINISH)
        } else {
            // Measurement failed - show retry dialog (UNLIMITED retries as per requirements)
            showRetryDialog(currentMeasurementNumber)
        }
    }

    private fun parseMeasurementResult(obj: JSONObject): MeasurementResults {
        return MeasurementResults(
            measurementNumber = currentMeasurementNumber,
            reiterationNumber = currentReiteration,
            consumptionCurLit = obj.optDouble("cur_con", 0.0).toFloat(),
            consumptionAvrgLit = obj.optDouble("average_con", 0.0).toFloat(),
            volumeCurLit = obj.optDouble("cur_volume", 0.0).toFloat(),
            duration = obj.optInt("duration", 0),
            valStart = obj.optInt("first_val", 0),
            valEnd = obj.optInt("last_val", 0),
            error = obj.optInt("calc_error", 0),
            result = obj.optInt("result", 0),
            waterTemperature = obj.optDouble("temper", 0.0).toFloat()
        )
    }

    /**
     * Shows the retry confirmation dialog.
     * UNLIMITED retries - the dialog always appears but never blocks due to retry count.
     * This is the key change from the original app (which limited to 3 retries).
     */
    private fun showRetryDialog(measurementNumber: Int) {
        AlertDialog.Builder(this)
            .setTitle(getString(R.string.repeat_measurement_title))
            // Note: no retry count limit - message doesn't show remaining count
            .setMessage(getString(R.string.sure_want_repeat_unlimited, measurementNumber + 1))
            .setPositiveButton(getString(R.string.ok)) { _, _ ->
                currentReiteration++
                retryMeasurement()
            }
            .setNegativeButton(getString(R.string.cancel)) { _, _ ->
                // User chose not to retry - proceed to finish
                navigateTo(Pages.FINISH)
            }
            .setCancelable(false)
            .show()
    }

    private fun retryMeasurement() {
        lifecycleScope.launch {
            withContext(Dispatchers.IO) {
                HttpFileClient().showFromDevice(ip, "action?type=retry")
            }
        }
        navigateTo(Pages.MEASUREMENT)
    }

    private fun onActionButtonClicked() {
        when (currentPage) {
            Pages.CONNECT -> { /* waiting for connection */ }
            Pages.MEASUREMENT -> showFinishConfirmation()
            Pages.FINISH -> saveAndExit()
        }
    }

    private fun showFinishConfirmation() {
        AlertDialog.Builder(this)
            .setTitle(R.string.alert)
            .setMessage(R.string.need_to_repeat_test_photo)
            .setPositiveButton(R.string.ok) { _, _ -> finishMeasurement() }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }

    private fun finishMeasurement() {
        lifecycleScope.launch {
            withContext(Dispatchers.IO) {
                HttpFileClient().showFromDevice(ip, "finish")
            }
        }
    }

    private fun saveAndExit() {
        cv?.let { counterVer ->
            if (counterVer.measResults.isEmpty()) {
                Toast.makeText(this, R.string.need_to_finish_verification, Toast.LENGTH_SHORT).show()
                return
            }
            lifecycleScope.launch {
                setLoading(true)
                val prefs = PoverkaApp.instance.preferences
                val protocolNumber = prefs.protocolNumber
                val result = protocolRepository.uploadProtocol(counterVer, protocolNumber)
                setLoading(false)
                result.fold(
                    onSuccess = {
                        prefs.protocolNumber = protocolNumber + 1
                        Toast.makeText(
                            this@MeasurementActivity,
                            R.string.protocol_uploaded,
                            Toast.LENGTH_SHORT
                        ).show()
                        finishAffinity()
                    },
                    onFailure = { e ->
                        Toast.makeText(
                            this@MeasurementActivity,
                            getString(R.string.error_message, e.message ?: ""),
                            Toast.LENGTH_LONG
                        ).show()
                        // Protocol is saved locally - show option to exit anyway
                        showSaveLocallyDialog()
                    }
                )
            }
        }
    }

    private fun showSaveLocallyDialog() {
        AlertDialog.Builder(this)
            .setTitle(R.string.alert)
            .setMessage(R.string.protocol_saved_locally)
            .setPositiveButton(R.string.ok) { _, _ -> finishAffinity() }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }

    private fun showExitConfirmation() {
        AlertDialog.Builder(this)
            .setTitle(R.string.alert)
            .setMessage(R.string.need_to_finish_verification)
            .setPositiveButton(R.string.ok) { _, _ -> finish() }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }

    private fun onStartImageClicked() {
        // Show start image in ImageActivity
        showImage("start")
    }

    private fun onFinishImageClicked() {
        // Show finish image in ImageActivity
        showImage("finish")
    }

    private fun showImage(type: String) {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                HttpFileClient().showFromDevice(ip, "photo_${type}")
            }
            result.fold(
                onSuccess = { bytes ->
                    val intent = Intent(this@MeasurementActivity, ImageActivity::class.java).apply {
                        putExtra(ImageActivity.EXTRA_IMAGE_DATA, bytes)
                        putExtra(ImageActivity.EXTRA_IMAGE_TITLE, type)
                        putExtra(MainActivity.EXTRA_IP, ip)
                    }
                    startActivity(intent)
                },
                onFailure = { e ->
                    Toast.makeText(
                        this@MeasurementActivity,
                        R.string.error_page_inserter,
                        Toast.LENGTH_SHORT
                    ).show()
                }
            )
        }
    }

    private fun onRepeatPhotoClicked() {
        lifecycleScope.launch {
            withContext(Dispatchers.IO) {
                HttpFileClient().showFromDevice(ip, "repeat_photo")
            }
        }
    }

    private fun setLoading(loading: Boolean) {
        binding.progressBar.visibility = if (loading) View.VISIBLE else View.GONE
        binding.buttonAction.isEnabled = !loading
    }

    // Update measurement display
    private fun updateMeasurementDisplay(obj: JSONObject) {
        val curCon = obj.optDouble("cur_con", 0.0)
        val avgCon = obj.optDouble("average_con", 0.0)
        val curVolume = obj.optDouble("cur_volume", 0.0)
        val temper = obj.optDouble("temper", 0.0)
        val pressDev = obj.optDouble("press_dev", 0.0)

        binding.textCurrentFlow.text = getString(R.string.current_flow_format, curCon)
        binding.textAvgFlow.text = getString(R.string.avg_flow_format, avgCon)
        binding.textVolume.text = getString(R.string.volume_format, curVolume)
        binding.textTemperature.text = getString(R.string.temperature_format, temper)

        // Color pressure warning
        val pressColor = when {
            pressDev > 100 -> getColor(R.color.warning_red)
            pressDev > 50 -> getColor(R.color.warning_blue)
            else -> getColor(R.color.warning_green)
        }
        binding.textPressure.setTextColor(pressColor)
        binding.textPressure.text = getString(R.string.pressure_format, pressDev)
    }
}
