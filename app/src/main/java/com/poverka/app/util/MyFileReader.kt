package com.poverka.app.util

import android.content.Context
import android.util.Log
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException

object MyFileReader {

    private const val TAG = "MyFileReader"

    fun writeInternalFile(context: Context, fileName: String, content: ByteArray) {
        try {
            val file = File(context.filesDir, fileName)
            FileOutputStream(file).use { it.write(content) }
        } catch (e: IOException) {
            Log.e(TAG, "Error writing file $fileName", e)
        }
    }

    fun writeInternalFile(context: Context, fileName: String, content: String) {
        writeInternalFile(context, fileName, content.toByteArray(Charsets.UTF_8))
    }

    fun readInternalFile(context: Context, fileName: String): ByteArray? {
        return try {
            val file = File(context.filesDir, fileName)
            if (!file.exists()) return null
            FileInputStream(file).use { it.readBytes() }
        } catch (e: IOException) {
            Log.e(TAG, "Error reading file $fileName", e)
            null
        }
    }

    fun readInternalFileAsString(context: Context, fileName: String): String? {
        return readInternalFile(context, fileName)?.toString(Charsets.UTF_8)
    }

    fun deleteInternalFile(context: Context, fileName: String): Boolean {
        return try {
            val file = File(context.filesDir, fileName)
            file.delete()
        } catch (e: Exception) {
            Log.e(TAG, "Error deleting file $fileName", e)
            false
        }
    }

    fun fileExists(context: Context, fileName: String): Boolean {
        return File(context.filesDir, fileName).exists()
    }
}
