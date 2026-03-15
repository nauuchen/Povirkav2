package com.poverka.app.ui.task

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.poverka.app.PoverkaApp
import com.poverka.app.R
import com.poverka.app.data.model.Task
import com.poverka.app.data.repository.TaskRepository
import com.poverka.app.databinding.ActivityLoadTaskBinding
import com.poverka.app.util.MyFileReader
import kotlinx.coroutines.launch

class LoadTaskActivity : AppCompatActivity() {

    private lateinit var binding: ActivityLoadTaskBinding
    private lateinit var taskRepository: TaskRepository

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityLoadTaskBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setSupportActionBar(binding.toolbar)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.load_tasks)
        }

        taskRepository = TaskRepository(this)

        setupViews()
        loadCachedTasks()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    private fun setupViews() {
        binding.buttonDownloadTasks.setOnClickListener { downloadTasks() }
        binding.buttonViewTasks.setOnClickListener { viewTasks() }
    }

    private fun loadCachedTasks() {
        val tasks = taskRepository.loadCachedTasks()
        if (tasks.isNotEmpty()) {
            binding.textTaskCount.text = getString(R.string.tasks_loaded_count, tasks.size)
            binding.buttonViewTasks.isEnabled = true
        } else {
            binding.textTaskCount.text = getString(R.string.no_tasks_loaded)
            binding.buttonViewTasks.isEnabled = false
        }
    }

    private fun downloadTasks() {
        setLoading(true)
        lifecycleScope.launch {
            val result = taskRepository.downloadTasks()
            setLoading(false)
            result.fold(
                onSuccess = { tasks ->
                    binding.textTaskCount.text = getString(R.string.tasks_loaded_count, tasks.size)
                    binding.buttonViewTasks.isEnabled = tasks.isNotEmpty()
                    Toast.makeText(
                        this@LoadTaskActivity,
                        getString(R.string.tasks_loaded_count, tasks.size),
                        Toast.LENGTH_SHORT
                    ).show()
                },
                onFailure = { e ->
                    Toast.makeText(
                        this@LoadTaskActivity,
                        getString(R.string.error_occurred_server_downloading),
                        Toast.LENGTH_LONG
                    ).show()
                }
            )
        }
    }

    private fun viewTasks() {
        startActivity(Intent(this, TaskViewerActivity::class.java))
    }

    private fun setLoading(loading: Boolean) {
        binding.progressBar.visibility = if (loading) View.VISIBLE else View.GONE
        binding.buttonDownloadTasks.isEnabled = !loading
    }
}
