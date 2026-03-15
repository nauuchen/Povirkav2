package com.poverka.app

import android.app.Application

class PoverkaApp : Application() {

    override fun onCreate() {
        super.onCreate()
        instance = this
    }

    companion object {
        lateinit var instance: PoverkaApp
            private set
    }
}
