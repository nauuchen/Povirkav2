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
import com.poverka.app.data.local.FileStorage
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.databinding.ActivityReSendProtocolBinding
import kotlinx.coroutines.launch
import java.io.File
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale

class ReSendProtocolActivity : AppCompatActivity() {

    private lateinit var binding: ActivityReSendProtocolBinding
    private lateinit var prefs: PreferencesManager
    private val headApi = HeadServerApi()
    private var selectedDate: String = ""

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityReSendProtocolBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        selectedDate = SimpleDateFormat("ddMMyyyy", Locale.getDefault()).format(Date())
        setupViews()
    }

    private fun setupViews() {
        binding.editRepeatDate.setText(SimpleDateFormat("dd.MM.yyyy", Locale.getDefault()).format(Date()))
        binding.editRepeatDate.setOnClickListener { showDatePicker() }

        binding.buttonLoadProtocols.setOnClickListener { loadProtocols() }
        binding.buttonReSend.setOnClickListener { reSendProtocol() }
    }

    private fun showDatePicker() {
        val cal = Calendar.getInstance()
        DatePickerDialog(
            this,
            { _, year, month, day ->
                cal.set(year, month, day)
                val displayFormat = SimpleDateFormat("dd.MM.yyyy", Locale.getDefault())
                val serverFormat = SimpleDateFormat("ddMMyyyy", Locale.getDefault())
                binding.editRepeatDate.setText(displayFormat.format(cal.time))
                selectedDate = serverFormat.format(cal.time)
            },
            cal.get(Calendar.YEAR),
            cal.get(Calendar.MONTH),
            cal.get(Calendar.DAY_OF_MONTH)
        ).show()
    }

    private fun loadProtocols() {
        val station = prefs.stationNumber
        if (station <= 0) {
            Toast.makeText(this, getString(R.string.need_to_set_station), Toast.LENGTH_SHORT).show()
            return
        }

        binding.progressBar.visibility = View.VISIBLE
        lifecycleScope.launch {
            val result = headApi.download("1/current/protocols?date=$selectedDate&station=%03d".format(station))
            binding.progressBar.visibility = View.GONE

            result.onSuccess { content ->
                binding.textProtocolInfo.text = content.ifEmpty { getString(R.string.protocol_not_found) }
            }
            result.onFailure {
                binding.textProtocolInfo.text = getString(R.string.protocol_not_found)
                Toast.makeText(this@ReSendProtocolActivity, getString(R.string.error_occurred_server_downloading), Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun reSendProtocol() {
        val protocolNumber = binding.editProtocolNumber.text.toString().trim()
        val number = protocolNumber.toIntOrNull()

        if (number == null || number <= 0) {
            Toast.makeText(this, getString(R.string.protocol_number_has_to_be_grater_0), Toast.LENGTH_SHORT).show()
            return
        }

        AlertDialog.Builder(this)
            .setTitle(getString(R.string.confirm_your_choise))
            .setMessage(getString(R.string.resend_protocol_confirm, number))
            .setPositiveButton(getString(R.string.yes)) { _, _ ->
                performReSend(number)
            }
            .setNegativeButton(getString(R.string.dismiss), null)
            .show()
    }

    private fun performReSend(number: Int) {
        val station = prefs.stationNumber
        val fileName = "%03d.log".format(number)
        val file = FileStorage.getInternalFile(this, fileName)

        if (!file.exists()) {
            Toast.makeText(this, getString(R.string.protocol_is_missing), Toast.LENGTH_SHORT).show()
            return
        }

        binding.progressBar.visibility = View.VISIBLE
        lifecycleScope.launch {
            val path = "logs/upload/1/%03d/$fileName".format(station)
            val result = headApi.upload(path, file)
            binding.progressBar.visibility = View.GONE

            result.onSuccess {
                Toast.makeText(this@ReSendProtocolActivity, getString(R.string.protocol_sent), Toast.LENGTH_SHORT).show()
            }
            result.onFailure {
                Toast.makeText(this@ReSendProtocolActivity, getString(R.string.error_message, it.message), Toast.LENGTH_SHORT).show()
            }
        }
    }
}
