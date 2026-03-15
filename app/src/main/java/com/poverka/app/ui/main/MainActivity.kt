package com.poverka.app.ui.main

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.location.Location
import android.os.Build
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import androidx.lifecycle.lifecycleScope
import com.google.android.gms.location.FusedLocationProviderClient
import com.google.android.gms.location.LocationServices
import com.poverka.app.BuildConfig
import com.poverka.app.PoverkaApp
import com.poverka.app.R
import com.poverka.app.databinding.ActivityMainBinding
import com.poverka.app.ui.protocol.ReSendProtocolActivity
import com.poverka.app.ui.protocol.ResetProtocolNumberActivity
import com.poverka.app.ui.settings.SettingsActivity
import com.poverka.app.ui.state.StateActivity
import com.poverka.app.ui.task.LoadTaskActivity
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.*

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var fusedLocationClient: FusedLocationProviderClient

    var latitude: Double = 0.0
        private set
    var longitude: Double = 0.0
        private set

    companion object {
        // Accessed by other activities
        var IP: String = "192.168.43.140"
        var MARKER: Int = 0  // 0 = dispatcher, 1 = local
        const val MARKER_DISPATCHER = 0
        const val MARKER_LOCAL = 1
        const val EXTRA_IP = "ip"
        const val EXTRA_LOCAL = "local"
        const val EXTRA_STATION = "station"
        const val EXTRA_SELECTED_ID = "selectedId"
    }

    private val permissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestMultiplePermissions()
    ) { permissions ->
        val allGranted = permissions.values.all { it }
        if (allGranted) {
            requestLocation()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        IP = PoverkaApp.instance.preferences.deviceIp
        fusedLocationClient = LocationServices.getFusedLocationProviderClient(this)

        setupViews()
        checkPermissionsAndLocation()
        updateStatusViews()
    }

    override fun onResume() {
        super.onResume()
        IP = PoverkaApp.instance.preferences.deviceIp
        updateStatusViews()
    }

    private fun setupViews() {
        binding.buttonMainStart.setOnClickListener { onStartLocalClicked() }
        binding.buttonMainTasks.setOnClickListener { onTasksClicked() }
        binding.buttonSettings.setOnClickListener { onSettingsClicked() }
        binding.buttonResend.setOnClickListener { onResendClicked() }
        binding.buttonResetProtocol.setOnClickListener { onResetProtocolClicked() }
        binding.textVersion.text = getString(R.string.version_format, BuildConfig.VERSION_NAME)
    }

    private fun updateStatusViews() {
        val prefs = PoverkaApp.instance.preferences
        val city = prefs.loadedCity
        binding.textLoadedCity.text = if (city.isNotEmpty())
            getString(R.string.main_view_loaded_city_value, city)
        else
            getString(R.string.main_view_loaded_city)

        val envT = prefs.envTemperature
        val envH = prefs.envHumidity
        val envP = prefs.envPressure
        binding.textEnvironmentSettings.text = getString(
            R.string.environment_info_format, envT, envH, envP
        )

        // Date/time
        val sdf = SimpleDateFormat("dd.MM.yyyy HH:mm:ss", Locale.getDefault())
        binding.textCurrentTime.text = sdf.format(Date())
    }

    private fun checkPermissionsAndLocation() {
        val permissions = mutableListOf(
            Manifest.permission.ACCESS_FINE_LOCATION,
            Manifest.permission.ACCESS_COARSE_LOCATION
        )
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
            permissions.add(Manifest.permission.WRITE_EXTERNAL_STORAGE)
            permissions.add(Manifest.permission.READ_EXTERNAL_STORAGE)
        }
        permissions.add(Manifest.permission.CAMERA)

        val missing = permissions.filter {
            ContextCompat.checkSelfPermission(this, it) != PackageManager.PERMISSION_GRANTED
        }
        if (missing.isEmpty()) {
            requestLocation()
        } else {
            permissionLauncher.launch(missing.toTypedArray())
        }
    }

    private fun requestLocation() {
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION)
            == PackageManager.PERMISSION_GRANTED) {
            binding.textCoordinatesStatus.text = getString(R.string.main_view_coordinates_time)
            fusedLocationClient.lastLocation.addOnSuccessListener { location: Location? ->
                location?.let {
                    latitude = it.latitude
                    longitude = it.longitude
                    val sdf = SimpleDateFormat("dd.MM.yyyy HH:mm:ss", Locale.getDefault())
                    binding.textCoordinatesStatus.text = getString(
                        R.string.coordinates_format, it.latitude, it.longitude
                    )
                }
            }
        }
    }

    fun onSettingsClicked() {
        startActivity(Intent(this, SettingsActivity::class.java))
    }

    fun onStartLocalClicked() {
        MARKER = MARKER_LOCAL
        val intent = Intent(this, StateActivity::class.java).apply {
            putExtra(EXTRA_IP, IP)
            putExtra(EXTRA_LOCAL, 1)
        }
        startActivity(intent)
    }

    fun onTasksClicked() {
        startActivity(Intent(this, LoadTaskActivity::class.java))
    }

    private fun onResendClicked() {
        startActivity(Intent(this, ReSendProtocolActivity::class.java))
    }

    private fun onResetProtocolClicked() {
        startActivity(Intent(this, ResetProtocolNumberActivity::class.java))
    }
}
