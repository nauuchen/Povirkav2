package com.poverka.app.data.local

import android.content.Context
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream

object FileStorage {

    fun writeInternalFile(context: Context, fileName: String, content: String) {
        try {
            val file = File(context.filesDir, fileName)
            FileOutputStream(file).use { fos ->
                fos.write(content.toByteArray(Charsets.UTF_8))
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun readInternalFile(context: Context, fileName: String): String? {
        return try {
            val file = File(context.filesDir, fileName)
            if (!file.exists()) return null
            FileInputStream(file).use { fis ->
                fis.readBytes().toString(Charsets.UTF_8)
            }
        } catch (e: Exception) {
            e.printStackTrace()
            null
        }
    }

    fun deleteInternalFile(context: Context, fileName: String): Boolean {
        return try {
            val file = File(context.filesDir, fileName)
            file.delete()
        } catch (e: Exception) {
            false
        }
    }

    fun internalFileExists(context: Context, fileName: String): Boolean {
        return File(context.filesDir, fileName).exists()
    }

    fun writeInternalBytes(context: Context, fileName: String, data: ByteArray) {
        try {
            val file = File(context.filesDir, fileName)
            FileOutputStream(file).use { fos ->
                fos.write(data)
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun readInternalBytes(context: Context, fileName: String): ByteArray? {
        return try {
            val file = File(context.filesDir, fileName)
            if (!file.exists()) return null
            FileInputStream(file).use { fis ->
                fis.readBytes()
            }
        } catch (e: Exception) {
            null
        }
    }

    fun getInternalFile(context: Context, fileName: String): File {
        return File(context.filesDir, fileName)
    }
}
