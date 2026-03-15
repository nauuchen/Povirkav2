package com.poverka.app.util

import android.util.Log
import org.json.JSONException
import org.json.JSONObject

/**
 * Parses JSON responses from the measurement device's console/API.
 */
object MyConsoleParser {

    private const val TAG = "MyConsoleParser"

    fun parseJsonSafe(json: String): JSONObject? {
        return try {
            JSONObject(json)
        } catch (e: JSONException) {
            Log.w(TAG, "Failed to parse JSON: ${e.message}")
            null
        }
    }

    fun getIntOrDefault(json: JSONObject, key: String, default: Int = 0): Int {
        return try {
            json.getInt(key)
        } catch (e: JSONException) {
            default
        }
    }

    fun getDoubleOrDefault(json: JSONObject, key: String, default: Double = 0.0): Double {
        return try {
            json.getDouble(key)
        } catch (e: JSONException) {
            default
        }
    }

    fun getStringOrDefault(json: JSONObject, key: String, default: String = ""): String {
        return try {
            json.getString(key)
        } catch (e: JSONException) {
            default
        }
    }

    fun getBoolOrDefault(json: JSONObject, key: String, default: Boolean = false): Boolean {
        return try {
            json.getBoolean(key)
        } catch (e: JSONException) {
            default
        }
    }
}
