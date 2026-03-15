package com.poverka.app.data.local

import android.content.Context
import android.content.SharedPreferences

/**
 * Manages app preferences (IP, metrologist name, authorization, etc.)
 */
class AppPreferences(context: Context) {

    private val prefs: SharedPreferences =
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)

    companion object {
        private const val PREFS_NAME = "poverka_prefs"
        const val KEY_IP = "device_ip"
        const val KEY_METROLOGIST_NAME = "metrologist_name"
        const val KEY_LOADED_CITY = "loaded_city"
        const val KEY_LOADED_CITY_ID = "loaded_city_id"
        const val KEY_PROTOCOL_NUMBER = "protocol_number"
        const val KEY_ENV_TEMPERATURE = "env_temperature"
        const val KEY_ENV_HUMIDITY = "env_humidity"
        const val KEY_ENV_PRESSURE = "env_pressure"
        const val KEY_SELECTED_TOWN_ID = "selected_town_id"
        const val KEY_SELECTED_TOWN_NAME = "selected_town_name"
        const val KEY_AUTH_TOKEN = "auth_token"

        const val DEFAULT_IP = "192.168.43.140"
    }

    var deviceIp: String
        get() = prefs.getString(KEY_IP, DEFAULT_IP) ?: DEFAULT_IP
        set(value) = prefs.edit().putString(KEY_IP, value).apply()

    var metrologistName: String
        get() = prefs.getString(KEY_METROLOGIST_NAME, "") ?: ""
        set(value) = prefs.edit().putString(KEY_METROLOGIST_NAME, value).apply()

    var loadedCity: String
        get() = prefs.getString(KEY_LOADED_CITY, "") ?: ""
        set(value) = prefs.edit().putString(KEY_LOADED_CITY, value).apply()

    var loadedCityId: Int
        get() = prefs.getInt(KEY_LOADED_CITY_ID, -1)
        set(value) = prefs.edit().putInt(KEY_LOADED_CITY_ID, value).apply()

    var protocolNumber: Int
        get() = prefs.getInt(KEY_PROTOCOL_NUMBER, 1)
        set(value) = prefs.edit().putInt(KEY_PROTOCOL_NUMBER, value).apply()

    var envTemperature: Int
        get() = prefs.getInt(KEY_ENV_TEMPERATURE, 20)
        set(value) = prefs.edit().putInt(KEY_ENV_TEMPERATURE, value).apply()

    var envHumidity: Int
        get() = prefs.getInt(KEY_ENV_HUMIDITY, 50)
        set(value) = prefs.edit().putInt(KEY_ENV_HUMIDITY, value).apply()

    var envPressure: Int
        get() = prefs.getInt(KEY_ENV_PRESSURE, 760)
        set(value) = prefs.edit().putInt(KEY_ENV_PRESSURE, value).apply()

    var selectedTownId: Int
        get() = prefs.getInt(KEY_SELECTED_TOWN_ID, -1)
        set(value) = prefs.edit().putInt(KEY_SELECTED_TOWN_ID, value).apply()

    var selectedTownName: String
        get() = prefs.getString(KEY_SELECTED_TOWN_NAME, "") ?: ""
        set(value) = prefs.edit().putString(KEY_SELECTED_TOWN_NAME, value).apply()

    var authToken: String
        get() = prefs.getString(KEY_AUTH_TOKEN, "") ?: ""
        set(value) = prefs.edit().putString(KEY_AUTH_TOKEN, value).apply()
}
