package com.poverka.app.data.repository

import android.content.Context
import android.util.Log
import com.poverka.app.data.model.Task
import com.poverka.app.data.remote.HttpFileClient
import com.poverka.app.util.MyFileReader
import org.json.JSONArray
import org.json.JSONException

/**
 * Repository for loading and managing tasks from the head server.
 */
class TaskRepository(private val context: Context) {

    private val httpClient = HttpFileClient()

    companion object {
        private const val TAG = "TaskRepository"
        const val TASKS_FILE = "tasks.json"
    }

    suspend fun downloadTasks(): Result<List<Task>> {
        return try {
            val result = httpClient.downloadFromHeadServer("tasks")
            result.map { bytes ->
                val json = bytes.toString(Charsets.UTF_8)
                MyFileReader.writeInternalFile(context, TASKS_FILE, json)
                parseTasks(json)
            }
        } catch (e: Exception) {
            Log.e(TAG, "downloadTasks error", e)
            Result.failure(e)
        }
    }

    fun loadCachedTasks(): List<Task> {
        val json = MyFileReader.readInternalFileAsString(context, TASKS_FILE) ?: return emptyList()
        return try {
            parseTasks(json)
        } catch (e: Exception) {
            Log.w(TAG, "loadCachedTasks parse error", e)
            emptyList()
        }
    }

    suspend fun cancelTask(taskId: Int, comment: String): Result<Unit> {
        return try {
            val body = """{"id":$taskId,"comment":"$comment"}""".toByteArray()
            httpClient.uploadToHeadServer("tasks/cancel", "cancel_$taskId.json", body)
        } catch (e: Exception) {
            Log.e(TAG, "cancelTask error", e)
            Result.failure(e)
        }
    }

    private fun parseTasks(json: String): List<Task> {
        val result = mutableListOf<Task>()
        try {
            val array = JSONArray(json)
            for (i in 0 until array.length()) {
                val obj = array.getJSONObject(i)
                result.add(
                    Task(
                        id = obj.optInt("id"),
                        fullAddress = obj.optString("address", ""),
                        fullApartment = obj.optString("apartment", ""),
                        time = obj.optString("time", ""),
                        surname = obj.optString("surname", ""),
                        status = obj.optInt("status", 0),
                        personalAccount = obj.optString("personal_account", ""),
                        serviceType = obj.optInt("service_type", 0),
                        phoneMain = obj.optString("phone_main", ""),
                        phoneDop = obj.optString("phone_dop", ""),
                        phoneDop2 = obj.optString("phone_dop2", "")
                    )
                )
            }
        } catch (e: JSONException) {
            Log.e(TAG, "parseTasks error", e)
        }
        return result
    }
}
