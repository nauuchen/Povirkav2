package com.poverka.app.ui.tasks

import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.R
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.data.model.Day
import com.poverka.app.data.model.Task
import com.poverka.app.data.repository.TaskRepository
import com.poverka.app.databinding.ActivityTaskViewerBinding
import com.poverka.app.ui.verification.StateActivity
import kotlinx.coroutines.launch

class TaskViewerActivity : AppCompatActivity() {

    private lateinit var binding: ActivityTaskViewerBinding
    private lateinit var prefs: PreferencesManager
    private lateinit var repository: TaskRepository
    private var days: List<Day> = emptyList()
    private var currentDay: Day? = null
    private var taskAdapter: TaskAdapter? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityTaskViewerBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        repository = TaskRepository(this)

        setupViews()
        loadSavedTasks()
    }

    private fun setupViews() {
        binding.buttonCleanGrey.setOnClickListener {
            cleanCompletedTasks()
        }

        binding.buttonLoadTasks.setOnClickListener {
            startActivityForResult(Intent(this, LoadTaskActivity::class.java), 1)
        }

        binding.taskList.setOnItemClickListener { _, _, position, _ ->
            val tasks = currentDay?.tasks ?: return@setOnItemClickListener
            if (position < tasks.size) {
                showTaskDetails(tasks[position])
            }
        }
    }

    private fun loadSavedTasks() {
        days = repository.loadSavedTasks()
        if (days.isNotEmpty()) {
            currentDay = days.first()
            updateDayHeaders()
            updateTaskList()
        } else {
            binding.taskList.adapter = null
        }
    }

    private fun updateDayHeaders() {
        // Create day buttons
        binding.taskHeaderDays.removeAllViews()
        days.forEach { day ->
            val tv = TextView(this)
            tv.text = day.date
            tv.textSize = 16f
            tv.setPadding(8, 8, 8, 8)
            tv.setOnClickListener {
                currentDay = day
                updateTaskList()
            }
            binding.taskHeaderDays.addView(tv)
        }
    }

    private fun updateTaskList() {
        val day = currentDay ?: return
        taskAdapter = TaskAdapter(day.tasks)
        binding.taskList.adapter = taskAdapter
    }

    private fun showTaskDetails(task: Task) {
        val message = StringBuilder()
        message.appendLine(getString(R.string.client_id_number) + ": ${task.id}")
        message.appendLine(task.getDisplayAddress())
        message.appendLine(getString(R.string.client_surname) + ": ${task.surname}")
        message.appendLine(getString(R.string.time) + ": ${task.time}")
        message.appendLine(getString(R.string.client_service_type) + ": ${task.serviceType}")
        if (task.note.isNotEmpty()) {
            message.appendLine(getString(R.string.client_note) + ": ${task.note}")
        }

        AlertDialog.Builder(this)
            .setTitle(getString(R.string.task_details))
            .setMessage(message.toString())
            .setPositiveButton(getString(R.string.start_verification)) { _, _ ->
                startVerificationForTask(task)
            }
            .setNegativeButton(getString(R.string.dismiss), null)
            .show()
    }

    private fun startVerificationForTask(task: Task) {
        val intent = Intent(this, StateActivity::class.java)
        intent.putExtra("taskId", task.id)
        intent.putExtra("personalAccount", task.personalAccount)
        intent.putExtra("withTask", true)
        startActivity(intent)
    }

    private fun cleanCompletedTasks() {
        AlertDialog.Builder(this)
            .setTitle(getString(R.string.confirm_your_choise))
            .setMessage(getString(R.string.clean_completed_confirm))
            .setPositiveButton(getString(R.string.yes)) { _, _ ->
                performClean()
            }
            .setNegativeButton(getString(R.string.dismiss), null)
            .show()
    }

    private fun performClean() {
        val removedCount = currentDay?.tasks?.count { it.status == Task.STATUS_DONE } ?: 0
        currentDay?.tasks?.removeAll { it.status == Task.STATUS_DONE }
        updateTaskList()
        Toast.makeText(this, getString(R.string.deleted_tasks_number, removedCount), Toast.LENGTH_SHORT).show()
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == 1 && resultCode == RESULT_OK) {
            loadSavedTasks()
        }
    }

    private inner class TaskAdapter(private val tasks: List<Task>) : BaseAdapter() {
        override fun getCount(): Int = tasks.size
        override fun getItem(position: Int): Task = tasks[position]
        override fun getItemId(position: Int): Long = tasks[position].id.toLong()

        override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {
            val view = convertView ?: LayoutInflater.from(this@TaskViewerActivity)
                .inflate(R.layout.item_task, parent, false)

            val task = tasks[position]
            view.findViewById<TextView>(R.id.textTaskTime).text = task.time
            view.findViewById<TextView>(R.id.textTaskAddress).text = task.getDisplayAddress()
            view.findViewById<TextView>(R.id.textTaskSurname).text = task.surname
            view.findViewById<TextView>(R.id.textTaskStatus).text = when (task.status) {
                Task.STATUS_DONE -> getString(R.string.task_done)
                Task.STATUS_DISMISSED -> getString(R.string.dismissed)
                else -> getString(R.string.in_task)
            }

            val bgColor = when (task.status) {
                Task.STATUS_DONE -> Color.parseColor("#E8F5E9")
                Task.STATUS_DISMISSED -> Color.parseColor("#FFEBEE")
                else -> Color.WHITE
            }
            view.setBackgroundColor(bgColor)

            return view
        }
    }
}
