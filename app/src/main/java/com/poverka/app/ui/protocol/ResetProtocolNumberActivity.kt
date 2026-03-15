package com.poverka.app.ui.protocol

import android.app.DatePickerDialog
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.R
import com.poverka.app.data.api.HeadServerApi
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.databinding.ActivityResetProtocolNumberBinding
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale

class ResetProtocolNumberActivity : AppCompatActivity() {

    private lateinit var binding: ActivityResetProtocolNumberBinding
    private lateinit var prefs: PreferencesManager
    private val headApi = HeadServerApi()
    private var selectedDate: String = ""

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityResetProtocolNumberBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        selectedDate = SimpleDateFormat("ddMMyyyy", Locale.getDefault()).format(Date())
        setupViews()
    }

    private fun setupViews() {
        binding.editResetDate.setText(SimpleDateFormat("dd.MM.yyyy", Locale.getDefault()).format(Date()))
        binding.editResetDate.setOnClickListener { showDatePicker() }
        binding.buttonGetNumber.setOnClickListener { getCurrentNumber() }
        binding.buttonResetNumber.setOnClickListener { resetNumber() }
    }

    private fun showDatePicker() {
        val cal = Calendar.getInstance()
        DatePickerDialog(
            this,
            { _, year, month, day ->
                cal.set(year, month, day)
                val displayFormat = SimpleDateFormat("dd.MM.yyyy", Locale.getDefault())
                val serverFormat = SimpleDateFormat("ddMMyyyy", Locale.getDefault())
                binding.editResetDate.setText(displayFormat.format(cal.time))
                selectedDate = serverFormat.format(cal.time)
            },
            cal.get(Calendar.YEAR),
            cal.get(Calendar.MONTH),
            cal.get(Calendar.DAY_OF_MONTH)
        ).show()
    }

    private fun getCurrentNumber() {
        val station = prefs.stationNumber
        binding.progressBar.visibility = View.VISIBLE

        lifecycleScope.launch {
            val result = headApi.download(
                "1/current/verif_count?date=$selectedDate&station=%03d".format(station)
            )
            binding.progressBar.visibility = View.GONE

            result.onSuccess { content ->
                binding.textCurrentNumber.text = getString(R.string.protocol_number_for_date) + ": $content"
            }
            result.onFailure {
                binding.textCurrentNumber.text = getString(R.string.error_occurred_server_downloading)
            }
        }
    }

    private fun resetNumber() {
        val newNumberStr = binding.editNewProtocolNumber.text.toString().trim()
        val newNumber = newNumberStr.toIntOrNull()

        if (newNumber == null) {
            Toast.makeText(this, getString(R.string.protocol_number_has_to_be_numeric), Toast.LENGTH_SHORT).show()
            return
        }
        if (newNumber <= 0) {
            Toast.makeText(this, getString(R.string.protocol_number_has_to_be_grater_0), Toast.LENGTH_SHORT).show()
            return
        }

        AlertDialog.Builder(this)
            .setTitle(getString(R.string.confirm_your_choise))
            .setMessage(getString(R.string.reset_protocol_number_confirm, newNumber))
            .setPositiveButton(getString(R.string.yes)) { _, _ ->
                performReset(newNumber)
            }
            .setNegativeButton(getString(R.string.dismiss), null)
            .show()
    }

    private fun performReset(newNumber: Int) {
        val station = prefs.stationNumber
        binding.progressBar.visibility = View.VISIBLE

        lifecycleScope.launch {
            val result = headApi.download(
                "1/current/set_verif_count?number=$newNumber&date=$selectedDate&station=%03d".format(station)
            )
            binding.progressBar.visibility = View.GONE

            result.onSuccess {
                Toast.makeText(this@ResetProtocolNumberActivity, getString(R.string.saved), Toast.LENGTH_SHORT).show()
                finish()
            }
            result.onFailure {
                Toast.makeText(this@ResetProtocolNumberActivity, getString(R.string.error_occurred_server_downloading), Toast.LENGTH_SHORT).show()
            }
        }
    }
}
