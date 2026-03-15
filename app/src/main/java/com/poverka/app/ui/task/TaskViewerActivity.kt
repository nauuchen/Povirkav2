package com.poverka.app.ui.task

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.poverka.app.PoverkaApp
import com.poverka.app.R
import com.poverka.app.data.model.Task
import com.poverka.app.data.repository.TaskRepository
import com.poverka.app.databinding.ActivityTaskViewerBinding
import com.poverka.app.ui.main.MainActivity
import com.poverka.app.ui.state.StateActivity

class TaskViewerActivity : AppCompatActivity() {

    private lateinit var binding: ActivityTaskViewerBinding
    private lateinit var taskRepository: TaskRepository
    private val tasks = mutableListOf<Task>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityTaskViewerBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setSupportActionBar(binding.toolbar)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.tasks)
        }

        taskRepository = TaskRepository(this)

        setupRecyclerView()
        loadTasks()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    private fun setupRecyclerView() {
        binding.recyclerView.layoutManager = LinearLayoutManager(this)
        binding.recyclerView.addItemDecoration(
            DividerItemDecoration(this, DividerItemDecoration.VERTICAL)
        )
        binding.recyclerView.adapter = TaskAdapter(tasks) { task ->
            onTaskSelected(task)
        }
    }

    private fun loadTasks() {
        val loaded = taskRepository.loadCachedTasks()
        tasks.clear()
        tasks.addAll(loaded)
        binding.recyclerView.adapter?.notifyDataSetChanged()
        binding.textEmptyState.visibility = if (tasks.isEmpty()) View.VISIBLE else View.GONE
    }

    private fun onTaskSelected(task: Task) {
        val ip = PoverkaApp.instance.preferences.deviceIp
        val intent = Intent(this, StateActivity::class.java).apply {
            putExtra(MainActivity.EXTRA_IP, ip)
            putExtra(MainActivity.EXTRA_LOCAL, 0)
            putExtra(MainActivity.EXTRA_SELECTED_ID, task.id)
            putExtra(StateActivity.EXTRA_PERSONAL_ACCOUNT, task.personalAccount)
        }
        startActivity(intent)
    }

    inner class TaskAdapter(
        private val items: List<Task>,
        private val onItemClick: (Task) -> Unit
    ) : RecyclerView.Adapter<TaskAdapter.TaskViewHolder>() {

        inner class TaskViewHolder(view: View) : RecyclerView.ViewHolder(view) {
            val textAddress: TextView = view.findViewById(R.id.textAddress)
            val textSurname: TextView = view.findViewById(R.id.textSurname)
            val textTime: TextView = view.findViewById(R.id.textTime)
            val textStatus: TextView = view.findViewById(R.id.textStatus)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): TaskViewHolder {
            val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.item_task, parent, false)
            return TaskViewHolder(view)
        }

        override fun onBindViewHolder(holder: TaskViewHolder, position: Int) {
            val task = items[position]
            holder.textAddress.text = task.getDisplayAddress()
            holder.textSurname.text = task.surname
            holder.textTime.text = task.time
            holder.textStatus.text = when (task.status) {
                0 -> holder.itemView.context.getString(R.string.status_pending)
                1 -> holder.itemView.context.getString(R.string.status_completed)
                2 -> holder.itemView.context.getString(R.string.dismissed)
                else -> ""
            }
            holder.itemView.setOnClickListener { onItemClick(task) }
        }

        override fun getItemCount() = items.size
    }
}
