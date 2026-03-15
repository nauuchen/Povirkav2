package com.poverka.app.ui.tasks

import android.app.DatePickerDialog
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.R
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.data.repository.TaskRepository
import com.poverka.app.databinding.ActivityLoadTaskBinding
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale

class LoadTaskActivity : AppCompatActivity() {

    private lateinit var binding: ActivityLoadTaskBinding
    private lateinit var prefs: PreferencesManager
    private lateinit var repository: TaskRepository
    private var selectedDate: String = ""

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityLoadTaskBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        repository = TaskRepository(this)

        selectedDate = SimpleDateFormat("ddMMyyyy", Locale.getDefault()).format(Date())
        setupViews()
    }

    private fun setupViews() {
        binding.editStation.setText(if (prefs.stationNumber > 0) prefs.stationNumber.toString() else "")

        binding.editDate.setText(SimpleDateFormat("dd.MM.yyyy", Locale.getDefault()).format(Date()))
        binding.editDate.setOnClickListener {
            showDatePicker()
        }

        binding.buttonLoadTasks.setOnClickListener {
            loadTasks()
        }
    }

    private fun showDatePicker() {
        val cal = Calendar.getInstance()
        DatePickerDialog(
            this,
            { _, year, month, day ->
                cal.set(year, month, day)
                val displayFormat = SimpleDateFormat("dd.MM.yyyy", Locale.getDefault())
                val serverFormat = SimpleDateFormat("ddMMyyyy", Locale.getDefault())
                binding.editDate.setText(displayFormat.format(cal.time))
                selectedDate = serverFormat.format(cal.time)
            },
            cal.get(Calendar.YEAR),
            cal.get(Calendar.MONTH),
            cal.get(Calendar.DAY_OF_MONTH)
        ).show()
    }

    private fun loadTasks() {
        val stationStr = binding.editStation.text.toString().trim()
        val station = stationStr.toIntOrNull() ?: prefs.stationNumber

        if (station <= 0) {
            Toast.makeText(this, getString(R.string.need_to_set_station), Toast.LENGTH_SHORT).show()
            return
        }

        binding.progressBar.visibility = View.VISIBLE
        binding.buttonLoadTasks.isEnabled = false

        lifecycleScope.launch {
            val result = repository.downloadTasks(station, selectedDate)
            binding.progressBar.visibility = View.GONE
            binding.buttonLoadTasks.isEnabled = true

            result.onSuccess { days ->
                val totalTasks = days.sumOf { it.tasks.size }
                Toast.makeText(
                    this@LoadTaskActivity,
                    getString(R.string.tasks_loaded, totalTasks),
                    Toast.LENGTH_SHORT
                ).show()
                setResult(RESULT_OK)
                finish()
            }
            result.onFailure {
                Toast.makeText(
                    this@LoadTaskActivity,
                    getString(R.string.error_occurred_server_downloading),
                    Toast.LENGTH_SHORT
                ).show()
            }
        }
    }
}
