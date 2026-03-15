package com.poverka.app

import android.app.Application
import com.poverka.app.data.local.AppPreferences
import com.poverka.app.data.remote.HttpFileClient

class PoverkaApp : Application() {

    lateinit var preferences: AppPreferences
        private set

    override fun onCreate() {
        super.onCreate()
        preferences = AppPreferences(this)
        instance = this
    }

    companion object {
        lateinit var instance: PoverkaApp
            private set

        val deviceIp: String
            get() = instance.preferences.deviceIp
    }
}
