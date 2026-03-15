package com.poverka.app.ui.protocol

import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.poverka.app.PoverkaApp
import com.poverka.app.R
import com.poverka.app.databinding.ActivityResetProtocolNumberBinding

class ResetProtocolNumberActivity : AppCompatActivity() {

    private lateinit var binding: ActivityResetProtocolNumberBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityResetProtocolNumberBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setSupportActionBar(binding.toolbar)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.reset_protocol_number_title)
        }

        setupViews()
        loadCurrentNumber()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    private fun loadCurrentNumber() {
        val currentNumber = PoverkaApp.instance.preferences.protocolNumber
        binding.textCurrentNumber.text = getString(R.string.current_protocol_number, currentNumber)
        binding.editNewNumber.setText(currentNumber.toString())
    }

    private fun setupViews() {
        binding.buttonReset.setOnClickListener { showConfirmation() }
    }

    private fun showConfirmation() {
        val newNumberStr = binding.editNewNumber.text?.toString()?.trim() ?: ""
        val newNumber = newNumberStr.toIntOrNull()
        if (newNumber == null || newNumber < 1) {
            binding.editNewNumber.error = getString(R.string.required_field)
            return
        }

        AlertDialog.Builder(this)
            .setTitle(R.string.confirm_your_choise)
            .setMessage(getString(R.string.reset_protocol_number_confirm, newNumber))
            .setPositiveButton(R.string.ok) { _, _ ->
                PoverkaApp.instance.preferences.protocolNumber = newNumber
                Toast.makeText(this, R.string.protocol_number_reset, Toast.LENGTH_SHORT).show()
                loadCurrentNumber()
            }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }
}
