package com.poverka.app.ui.main

import android.app.Service
import android.content.Intent
import android.os.IBinder

/**
 * Service that handles cleanup when the app is removed from recents.
 */
class ExitService : Service() {

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onTaskRemoved(rootIntent: Intent?) {
        super.onTaskRemoved(rootIntent)
        // Cleanup tasks when app is removed from recents
        stopSelf()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        return START_NOT_STICKY
    }
}
