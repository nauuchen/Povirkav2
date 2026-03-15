package com.poverka.app.ui.verification

import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.R
import com.poverka.app.data.api.LocalDeviceApi
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.databinding.ActivityClientBinding
import com.poverka.app.ui.main.MainActivity
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

class ClientActivity : AppCompatActivity() {

    private lateinit var binding: ActivityClientBinding
    private lateinit var prefs: PreferencesManager
    private var localApi: LocalDeviceApi? = null
    private var keepAliveJob: Job? = null
    private var isConnected = false

    companion object {
        private const val KEEP_ALIVE_INTERVAL_MS = 10_000L
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityClientBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        setupViews()
        connect()
    }

    override fun onDestroy() {
        super.onDestroy()
        keepAliveJob?.cancel()
    }

    private fun setupViews() {
        binding.buttonConnect.setOnClickListener {
            connect()
        }

        binding.buttonDisconnect.setOnClickListener {
            disconnect()
        }

        updateConnectionStatus(false)
    }

    private fun connect() {
        val ip = MainActivity.IP
        if (ip.isEmpty()) {
            Toast.makeText(this, getString(R.string.need_to_set_ip), Toast.LENGTH_SHORT).show()
            return
        }

        localApi = LocalDeviceApi(ip)
        binding.progressBar.visibility = View.VISIBLE
        binding.buttonConnect.isEnabled = false

        lifecycleScope.launch {
            val result = localApi!!.downloadString("state.json")
            binding.progressBar.visibility = View.GONE
            binding.buttonConnect.isEnabled = true

            result.onSuccess {
                isConnected = true
                updateConnectionStatus(true)
                startKeepAlive()
            }
            result.onFailure {
                isConnected = false
                updateConnectionStatus(false)
                Toast.makeText(this@ClientActivity, getString(R.string.error_occurred_no_station), Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun disconnect() {
        keepAliveJob?.cancel()
        isConnected = false
        updateConnectionStatus(false)
        localApi = null
    }

    private fun startKeepAlive() {
        keepAliveJob?.cancel()
        keepAliveJob = lifecycleScope.launch {
            while (isConnected) {
                delay(KEEP_ALIVE_INTERVAL_MS)
                localApi?.downloadString("ping")
            }
        }
    }

    private fun updateConnectionStatus(connected: Boolean) {
        binding.textConnectionStatus.text = if (connected) {
            getString(R.string.connected)
        } else {
            getString(R.string.disconnected)
        }
        binding.buttonDisconnect.isEnabled = connected
        binding.buttonConnect.isEnabled = !connected
    }
}
