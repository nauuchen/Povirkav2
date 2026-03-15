package com.poverka.app.data.repository

import android.content.Context
import com.poverka.app.data.api.HeadServerApi
import com.poverka.app.data.local.FileStorage
import com.poverka.app.data.model.Day
import com.poverka.app.data.model.Task
import org.json.JSONArray
import org.json.JSONObject
import java.io.File

class TaskRepository(
    private val context: Context,
    private val headApi: HeadServerApi = HeadServerApi()
) {

    suspend fun downloadTasks(stationNumber: Int, date: String): Result<List<Day>> {
        val path = "stations/tasks/1/%03d?date=%s".format(stationNumber, date)
        val result = headApi.download(path)
        return result.map { content ->
            FileStorage.writeInternalFile(context, "localTasks.json", content)
            parseTasks(content)
        }
    }

    fun loadSavedTasks(): List<Day> {
        val content = FileStorage.readInternalFile(context, "localTasks.json") ?: return emptyList()
        return parseTasks(content)
    }

    suspend fun uploadProtocol(stationNumber: Int, protocolFile: File): Result<String> {
        val path = "1/current/protocol/${protocolFile.name}"
        return headApi.upload(path, protocolFile)
    }

    suspend fun getProtocolsForDate(stationNumber: Int, date: String): Result<String> {
        val path = "1/current/protocols?date=$date&station=%03d".format(stationNumber)
        return headApi.download(path)
    }

    private fun parseTasks(json: String): List<Day> {
        return try {
            val array = JSONArray(json)
            (0 until array.length()).map { i ->
                val dayObj = array.getJSONObject(i)
                val tasksArray = dayObj.optJSONArray("tasks") ?: JSONArray()
                val tasks = (0 until tasksArray.length()).map { j ->
                    val t = tasksArray.getJSONObject(j)
                    Task(
                        id = t.optInt("id", 0),
                        fullAddress = t.optString("address", ""),
                        fullApartment = t.optString("apartment", ""),
                        time = t.optString("time", ""),
                        surname = t.optString("surname", ""),
                        status = t.optInt("status", 0),
                        serviceType = t.optString("service_type", ""),
                        note = t.optString("note", ""),
                        dayId = dayObj.optInt("id", 0),
                        personalAccount = t.optString("personal_account", ""),
                        paymentAccount = t.optInt("payment_account", 0),
                        stationNumber = t.optInt("station", 0)
                    )
                }
                Day(
                    id = dayObj.optInt("id", 0),
                    date = dayObj.optString("date", ""),
                    newCount = dayObj.optInt("new_count", 0),
                    cancelCount = dayObj.optInt("cancel_count", 0),
                    doneCountDisp = dayObj.optInt("done_count_disp", 0),
                    doneCountSolo = dayObj.optInt("done_count_solo", 0),
                    tasks = ArrayList(tasks)
                )
            }
        } catch (e: Exception) {
            emptyList()
        }
    }
}
