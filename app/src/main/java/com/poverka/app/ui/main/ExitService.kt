package com.poverka.app.ui.main

import android.app.Service
import android.content.Intent
import android.os.IBinder

/**
 * Background service that performs cleanup when the app task is removed (swiped away from recents).
 * Started in MainActivity and configured with stopWithTask=false so it receives the
 * [onTaskRemoved] callback even when the app is fully closed by the user.
 */
class ExitService : Service() {

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        return START_NOT_STICKY
    }

    override fun onTaskRemoved(rootIntent: Intent?) {
        super.onTaskRemoved(rootIntent)
        stopSelf()
    }
}
