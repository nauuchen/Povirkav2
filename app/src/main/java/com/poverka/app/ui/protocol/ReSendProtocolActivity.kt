package com.poverka.app.ui.protocol

import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.R
import com.poverka.app.data.repository.ProtocolRepository
import com.poverka.app.databinding.ActivityReSendProtocolBinding
import kotlinx.coroutines.launch

class ReSendProtocolActivity : AppCompatActivity() {

    private lateinit var binding: ActivityReSendProtocolBinding
    private lateinit var protocolRepository: ProtocolRepository
    private var savedProtocols: List<String> = emptyList()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityReSendProtocolBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setSupportActionBar(binding.toolbar)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.resend_text_tittle)
        }

        protocolRepository = ProtocolRepository(this)
        setupViews()
        loadProtocols()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    private fun setupViews() {
        binding.buttonResend.setOnClickListener { showProtocolPicker() }
    }

    private fun loadProtocols() {
        savedProtocols = protocolRepository.listSavedProtocols()
        binding.textProtocolCount.text = getString(R.string.saved_protocols_count, savedProtocols.size)
        binding.buttonResend.isEnabled = savedProtocols.isNotEmpty()
    }

    private fun showProtocolPicker() {
        if (savedProtocols.isEmpty()) {
            Toast.makeText(this, R.string.no_saved_protocols, Toast.LENGTH_SHORT).show()
            return
        }
        AlertDialog.Builder(this)
            .setTitle(R.string.select_protocol_to_resend)
            .setItems(savedProtocols.toTypedArray()) { _, which ->
                resendProtocol(savedProtocols[which])
            }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }

    private fun resendProtocol(fileName: String) {
        setLoading(true)
        lifecycleScope.launch {
            val result = protocolRepository.resendProtocol(fileName)
            setLoading(false)
            result.fold(
                onSuccess = {
                    Toast.makeText(
                        this@ReSendProtocolActivity,
                        getString(R.string.protocol_uploaded),
                        Toast.LENGTH_SHORT
                    ).show()
                    loadProtocols()
                },
                onFailure = { e ->
                    Toast.makeText(
                        this@ReSendProtocolActivity,
                        getString(R.string.error_occurred_server_downloading),
                        Toast.LENGTH_LONG
                    ).show()
                }
            )
        }
    }

    private fun setLoading(loading: Boolean) {
        binding.progressBar.visibility = if (loading) View.VISIBLE else View.GONE
        binding.buttonResend.isEnabled = !loading
    }
}
