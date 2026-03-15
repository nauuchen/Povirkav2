package com.poverka.app.data.repository

import android.content.Context
import android.util.Log
import com.poverka.app.data.model.CounterVerification
import com.poverka.app.data.remote.HttpFileClient
import com.poverka.app.util.MyFileReader
import com.poverka.app.util.MySender
import org.json.JSONArray
import org.json.JSONException

/**
 * Repository for uploading verification protocols to the head server.
 */
class ProtocolRepository(private val context: Context) {

    private val httpClient = HttpFileClient()

    companion object {
        private const val TAG = "ProtocolRepository"
        const val PROTOCOLS_DIR = "protocols"
    }

    /**
     * Uploads a verification protocol to the head server.
     */
    suspend fun uploadProtocol(cv: CounterVerification, protocolNumber: Int): Result<Unit> {
        return try {
            val json = MySender.buildProtocolJson(cv)
            val fileName = "$protocolNumber.json"
            val data = json.toByteArray(Charsets.UTF_8)
            // Save locally first
            MyFileReader.writeInternalFile(context, fileName, data)
            // Upload to server
            httpClient.uploadToHeadServer("protocols", fileName, data)
        } catch (e: Exception) {
            Log.e(TAG, "uploadProtocol error", e)
            Result.failure(e)
        }
    }

    /**
     * Re-sends a saved protocol from local storage.
     */
    suspend fun resendProtocol(fileName: String): Result<Unit> {
        return try {
            val data = MyFileReader.readInternalFile(context, fileName)
                ?: return Result.failure(Exception("File not found: $fileName"))
            httpClient.uploadToHeadServer("protocols", fileName, data)
        } catch (e: Exception) {
            Log.e(TAG, "resendProtocol error", e)
            Result.failure(e)
        }
    }

    /**
     * Lists locally saved protocols that haven't been uploaded yet.
     */
    fun listSavedProtocols(): List<String> {
        return context.filesDir.listFiles()
            ?.filter { it.name.endsWith(".json") && it.name != "address.json" 
                && it.name != "towns.json" && it.name != "tasks.json" }
            ?.map { it.name }
            ?: emptyList()
    }

    /**
     * Downloads type database from server.
     */
    suspend fun downloadTypesDb(): Result<ByteArray> {
        return try {
            httpClient.downloadFromHeadServer("types")
        } catch (e: Exception) {
            Log.e(TAG, "downloadTypesDb error", e)
            Result.failure(e)
        }
    }

    /**
     * Downloads test database from server.
     */
    suspend fun downloadTestsDb(): Result<ByteArray> {
        return try {
            httpClient.downloadFromHeadServer("tests")
        } catch (e: Exception) {
            Log.e(TAG, "downloadTestsDb error", e)
            Result.failure(e)
        }
    }

    /**
     * Checks if an APK update is available.
     */
    suspend fun checkForUpdate(): Result<String> {
        return try {
            httpClient.downloadFromHeadServer("version").map { it.toString(Charsets.UTF_8) }
        } catch (e: Exception) {
            Log.e(TAG, "checkForUpdate error", e)
            Result.failure(e)
        }
    }

    /**
     * Downloads APK update with progress callback.
     */
    suspend fun downloadApkUpdate(path: String, onProgress: (Int) -> Unit): Result<ByteArray> {
        return try {
            httpClient.downloadApkUpdate(path, onProgress)
        } catch (e: Exception) {
            Log.e(TAG, "downloadApkUpdate error", e)
            Result.failure(e)
        }
    }
}
