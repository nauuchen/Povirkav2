package com.poverka.app.data.local

import android.content.Context
import android.content.SharedPreferences

class PreferencesManager(context: Context) {

    private val prefs: SharedPreferences =
        context.getSharedPreferences("settings", Context.MODE_PRIVATE)

    companion object {
        const val KEY_IP = "ip"
        const val KEY_STATION = "station"
        const val KEY_METROLOGIST = "metrologist"
        const val KEY_ENVIRONMENT_T = "environmentT"
        const val KEY_ENVIRONMENT_H = "environmentH"
        const val KEY_LOCAL = "local"
        const val KEY_LANGUAGE = "language"
        const val KEY_PHOTO_TYPE = "photoType"
        const val KEY_PAYMENT_ACCOUNT_CURRENT = "paymentAccountCurrent"
        const val KEY_PAYMENT_ACCOUNT_GENERATE = "paymentAccountGenerate"
        const val KEY_SELECTED_CITY_ID = "selectedId"
        const val KEY_STATION_CITY = "stationCity"
        const val DEFAULT_IP = "192.168.43.140"
    }

    var ip: String
        get() = prefs.getString(KEY_IP, DEFAULT_IP) ?: DEFAULT_IP
        set(value) = prefs.edit().putString(KEY_IP, value).apply()

    var stationNumber: Int
        get() = prefs.getInt(KEY_STATION, 0)
        set(value) = prefs.edit().putInt(KEY_STATION, value).apply()

    var metrologistName: String
        get() = prefs.getString(KEY_METROLOGIST, "") ?: ""
        set(value) = prefs.edit().putString(KEY_METROLOGIST, value).apply()

    var environmentTemperature: Int
        get() = prefs.getInt(KEY_ENVIRONMENT_T, 20)
        set(value) = prefs.edit().putInt(KEY_ENVIRONMENT_T, value).apply()

    var environmentHumidity: Int
        get() = prefs.getInt(KEY_ENVIRONMENT_H, 50)
        set(value) = prefs.edit().putInt(KEY_ENVIRONMENT_H, value).apply()

    var isLocal: Boolean
        get() = prefs.getInt(KEY_LOCAL, 0) != 0
        set(value) = prefs.edit().putInt(KEY_LOCAL, if (value) 1 else 0).apply()

    var language: String
        get() = prefs.getString(KEY_LANGUAGE, "uk") ?: "uk"
        set(value) = prefs.edit().putString(KEY_LANGUAGE, value).apply()

    var photoType: Int
        get() = prefs.getInt(KEY_PHOTO_TYPE, 0)
        set(value) = prefs.edit().putInt(KEY_PHOTO_TYPE, value).apply()

    var selectedCityId: Int
        get() = prefs.getInt(KEY_SELECTED_CITY_ID, -1)
        set(value) = prefs.edit().putInt(KEY_SELECTED_CITY_ID, value).apply()

    var stationCity: String
        get() = prefs.getString(KEY_STATION_CITY, "") ?: ""
        set(value) = prefs.edit().putString(KEY_STATION_CITY, value).apply()

    var paymentAccountCurrent: Boolean
        get() = prefs.getBoolean(KEY_PAYMENT_ACCOUNT_CURRENT, false)
        set(value) = prefs.edit().putBoolean(KEY_PAYMENT_ACCOUNT_CURRENT, value).apply()

    var paymentAccountGenerate: Boolean
        get() = prefs.getBoolean(KEY_PAYMENT_ACCOUNT_GENERATE, false)
        set(value) = prefs.edit().putBoolean(KEY_PAYMENT_ACCOUNT_GENERATE, value).apply()
}
