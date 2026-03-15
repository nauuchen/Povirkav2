package com.poverka.app.data.repository

import android.content.Context
import com.poverka.app.data.api.HeadServerApi
import com.poverka.app.data.api.LocalDeviceApi
import com.poverka.app.data.local.FileStorage
import com.poverka.app.data.local.PreferencesManager
import com.poverka.app.data.model.Address
import com.poverka.app.data.model.Street
import com.poverka.app.data.model.Town
import org.json.JSONArray
import org.json.JSONObject

class SettingsRepository(
    private val context: Context,
    private val headApi: HeadServerApi = HeadServerApi(),
    private val prefs: PreferencesManager = PreferencesManager(context)
) {

    suspend fun downloadDeviceTypes(stationNumber: Int): Result<String> {
        val path = "device-types/download-simple?device-class=8"
        val result = headApi.download(path)
        result.onSuccess { content ->
            FileStorage.writeInternalFile(context, "types.json", content)
        }
        return result
    }

    suspend fun downloadTests(stationNumber: Int): Result<String> {
        val path = "ver-tests/download?equipment-type=1"
        val result = headApi.download(path)
        result.onSuccess { content ->
            FileStorage.writeInternalFile(context, "tests.json", content)
        }
        return result
    }

    suspend fun downloadTowns(stationNumber: Int): Result<List<Town>> {
        val path = "getsprtown?equipmentType=1&serial=%03d".format(stationNumber)
        val result = headApi.download(path)
        return result.map { content ->
            parseTowns(content)
        }
    }

    suspend fun downloadStreets(townId: Int, stationNumber: Int): Result<String> {
        val path = "getsprstreet?townId=%d&equipmentType=1&serial=%03d".format(townId, stationNumber)
        val result = headApi.download(path)
        result.onSuccess { content ->
            FileStorage.writeInternalFile(context, "address.json", content)
        }
        return result
    }

    suspend fun checkApkUpdate(stationNumber: Int): Result<String> {
        val path = "apk/last?equipment-type=1&serial=%03d".format(stationNumber)
        return headApi.download(path)
    }

    suspend fun getStationState(stationNumber: Int): Result<String> {
        val path = "stations/state/1/%03d?ver=2".format(stationNumber)
        return headApi.download(path)
    }

    suspend fun uploadLog(stationNumber: Int, logFile: java.io.File): Result<String> {
        val path = "logs/upload/1/%03d/${logFile.name}".format(stationNumber)
        return headApi.upload(path, logFile)
    }

    fun loadSavedStreets(): List<Street> {
        val content = FileStorage.readInternalFile(context, "address.json") ?: return emptyList()
        return parseStreets(content)
    }

    fun hasAddressDatabase(): Boolean =
        FileStorage.internalFileExists(context, "address.json")

    fun hasTypesDatabase(): Boolean =
        FileStorage.internalFileExists(context, "types.json")

    fun hasTestsDatabase(): Boolean =
        FileStorage.internalFileExists(context, "tests.json")

    private fun parseTowns(json: String): List<Town> {
        return try {
            val array = JSONArray(json)
            (0 until array.length()).map { i ->
                val obj = array.getJSONObject(i)
                Town(
                    id = obj.getInt("ID"),
                    name = obj.getString("TOWN_NAME")
                )
            }.sorted()
        } catch (e: Exception) {
            emptyList()
        }
    }

    private fun parseStreets(json: String): List<Street> {
        return try {
            val array = JSONArray(json)
            (0 until array.length()).map { i ->
                val obj = array.getJSONObject(i)
                Street(
                    id = obj.getInt("ID"),
                    name = obj.optString("STREET_NAME", obj.optString("name", ""))
                )
            }.sorted()
        } catch (e: Exception) {
            emptyList()
        }
    }
}
