package com.poverka.app.ui.main

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import com.poverka.app.BuildConfig
import com.poverka.app.R
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.databinding.ActivityMainBinding
import com.poverka.app.ui.settings.SettingsActivity
import com.poverka.app.ui.tasks.TaskViewerActivity
import com.poverka.app.ui.verification.StateActivity
import com.poverka.app.ui.protocol.ReSendProtocolActivity
import com.poverka.app.ui.protocol.ResetProtocolNumberActivity

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var prefs: PreferencesManager

    companion object {
        var IP: String = "192.168.43.140"
        private const val PERMISSIONS_REQUEST_CODE = 100
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        IP = prefs.ip

        setupViews()
        requestPermissions()
        startExitService()
    }

    override fun onResume() {
        super.onResume()
        IP = prefs.ip
        updateStatusViews()
    }

    private fun setupViews() {
        binding.buttonMainStart.setOnClickListener {
            startVerification(false)
        }

        binding.buttonMainTasks.setOnClickListener {
            startActivity(Intent(this, TaskViewerActivity::class.java))
        }

        binding.buttonSettings.setOnClickListener {
            startActivity(Intent(this, SettingsActivity::class.java))
        }

        binding.buttonReSendProtocol.setOnClickListener {
            startActivity(Intent(this, ReSendProtocolActivity::class.java))
        }

        binding.buttonResetProtocolNumber.setOnClickListener {
            startActivity(Intent(this, ResetProtocolNumberActivity::class.java))
        }

        binding.textVersion.text = getString(R.string.version_format, BuildConfig.VERSION_NAME)
        updateStatusViews()
    }

    private fun updateStatusViews() {
        val cityName = prefs.stationCity
        binding.textLoadedCity.text = if (cityName.isNotEmpty()) {
            getString(R.string.main_view_loaded_city_value, cityName)
        } else {
            getString(R.string.main_view_loaded_city)
        }

        val envT = prefs.environmentTemperature
        val envH = prefs.environmentHumidity
        binding.textEnvironmentSettings.text =
            getString(R.string.main_view_environment_settings_value, envT, envH)
    }

    private fun startVerification(withTask: Boolean) {
        if (prefs.ip.isEmpty()) {
            Toast.makeText(this, getString(R.string.need_to_set_ip), Toast.LENGTH_LONG).show()
            return
        }
        val intent = Intent(this, StateActivity::class.java)
        intent.putExtra("withTask", withTask)
        startActivity(intent)
    }

    private fun requestPermissions() {
        val permissions = mutableListOf(
            Manifest.permission.ACCESS_FINE_LOCATION,
            Manifest.permission.ACCESS_COARSE_LOCATION,
            Manifest.permission.CAMERA
        )
        if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.P) {
            permissions.add(Manifest.permission.WRITE_EXTERNAL_STORAGE)
            permissions.add(Manifest.permission.READ_EXTERNAL_STORAGE)
        }

        val notGranted = permissions.filter {
            ContextCompat.checkSelfPermission(this, it) != PackageManager.PERMISSION_GRANTED
        }

        if (notGranted.isNotEmpty()) {
            ActivityCompat.requestPermissions(this, notGranted.toTypedArray(), PERMISSIONS_REQUEST_CODE)
        }
    }

    private fun startExitService() {
        try {
            startService(Intent(this, ExitService::class.java))
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }
}
