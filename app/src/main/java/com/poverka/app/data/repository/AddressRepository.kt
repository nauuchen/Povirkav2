package com.poverka.app.data.repository

import android.content.Context
import android.util.Log
import com.poverka.app.data.model.Address
import com.poverka.app.data.model.Town
import com.poverka.app.data.remote.HttpFileClient
import com.poverka.app.util.MyFileReader
import org.json.JSONArray
import org.json.JSONException

/**
 * Repository for loading towns, streets, and address data.
 */
class AddressRepository(private val context: Context) {

    private val httpClient = HttpFileClient()

    companion object {
        private const val TAG = "AddressRepository"
        const val ADDRESS_FILE = "address.json"
        const val TOWNS_FILE = "towns.json"
        const val STREETS_FILE = "streets.json"
    }

    suspend fun downloadTowns(): Result<List<Town>> {
        return try {
            val result = httpClient.downloadFromHeadServer("cities")
            result.map { bytes ->
                val json = bytes.toString(Charsets.UTF_8)
                MyFileReader.writeInternalFile(context, TOWNS_FILE, json)
                parseTowns(json)
            }
        } catch (e: Exception) {
            Log.e(TAG, "downloadTowns error", e)
            Result.failure(e)
        }
    }

    suspend fun downloadStreets(townId: Int): Result<List<Address>> {
        return try {
            val result = httpClient.downloadFromHeadServer("streets/$townId")
            result.map { bytes ->
                val json = bytes.toString(Charsets.UTF_8)
                MyFileReader.writeInternalFile(context, ADDRESS_FILE, json)
                parseStreets(json)
            }
        } catch (e: Exception) {
            Log.e(TAG, "downloadStreets error", e)
            Result.failure(e)
        }
    }

    fun loadCachedTowns(): List<Town> {
        val json = MyFileReader.readInternalFileAsString(context, TOWNS_FILE) ?: return emptyList()
        return try {
            parseTowns(json)
        } catch (e: Exception) {
            Log.w(TAG, "loadCachedTowns parse error", e)
            emptyList()
        }
    }

    fun loadCachedStreets(): List<Address> {
        val json = MyFileReader.readInternalFileAsString(context, ADDRESS_FILE) ?: return emptyList()
        return try {
            parseStreets(json)
        } catch (e: Exception) {
            Log.w(TAG, "loadCachedStreets parse error", e)
            emptyList()
        }
    }

    private fun parseTowns(json: String): List<Town> {
        val result = mutableListOf<Town>()
        try {
            val array = JSONArray(json)
            for (i in 0 until array.length()) {
                val obj = array.getJSONObject(i)
                val id = obj.optInt("ID", -1)
                val name = obj.optString("TOWN_NAME", "")
                if (id >= 0 && name.isNotEmpty()) {
                    result.add(Town(id, name))
                }
            }
        } catch (e: JSONException) {
            Log.e(TAG, "parseTowns error", e)
        }
        return result.sorted()
    }

    private fun parseStreets(json: String): List<Address> {
        val result = mutableListOf<Address>()
        try {
            val array = JSONArray(json)
            for (i in 0 until array.length()) {
                val obj = array.getJSONObject(i)
                val id = obj.optInt("ID", -1)
                val name = obj.optString("NAME", obj.optString("STREET_NAME", ""))
                if (id >= 0 && name.isNotEmpty()) {
                    result.add(Address(id, name))
                }
            }
        } catch (e: JSONException) {
            Log.e(TAG, "parseStreets error", e)
        }
        return result.sorted()
    }
}
