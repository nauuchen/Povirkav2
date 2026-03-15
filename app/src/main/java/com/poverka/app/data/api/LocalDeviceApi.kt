package com.poverka.app.data.api

import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileInputStream
import java.net.HttpURLConnection
import java.net.URL
import java.util.concurrent.TimeUnit

class LocalDeviceApi(ip: String) {

    private val baseUrl = "http://$ip/"
    private val client: OkHttpClient = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .writeTimeout(30, TimeUnit.SECONDS)
        .build()

    suspend fun showFolder(path: String): Result<String> = withContext(Dispatchers.IO) {
        try {
            val url = "$baseUrl$path/"
            val request = Request.Builder()
                .url(url)
                .addHeader("Connection", "Keep-Alive")
                .addHeader("Cache-Control", "no-cache")
                .get()
                .build()
            val response = client.newCall(request).execute()
            if (response.isSuccessful) {
                Result.success(response.body?.string() ?: "")
            } else {
                Result.failure(Exception("Problem with show. Server replied HTTP code: ${response.code}"))
            }
        } catch (e: Exception) {
            Log.e("LocalDeviceApi", "Show error: ${e.message}")
            Result.failure(e)
        }
    }

    suspend fun downloadFile(path: String): Result<ByteArray> = withContext(Dispatchers.IO) {
        try {
            val request = Request.Builder()
                .url("$baseUrl$path")
                .addHeader("Connection", "Keep-Alive")
                .addHeader("Cache-Control", "no-cache")
                .get()
                .build()
            val response = client.newCall(request).execute()
            if (response.isSuccessful) {
                Result.success(response.body?.bytes() ?: ByteArray(0))
            } else {
                Result.failure(Exception("Problem with download. Server replied HTTP code: ${response.code}"))
            }
        } catch (e: Exception) {
            Log.e("LocalDeviceApi", "Download error: ${e.message}")
            Result.failure(e)
        }
    }

    suspend fun downloadString(path: String): Result<String> = withContext(Dispatchers.IO) {
        try {
            val request = Request.Builder()
                .url("$baseUrl$path")
                .addHeader("Connection", "Keep-Alive")
                .addHeader("Cache-Control", "no-cache")
                .get()
                .build()
            val response = client.newCall(request).execute()
            if (response.isSuccessful) {
                Result.success(response.body?.string() ?: "")
            } else {
                Result.failure(Exception("Problem with download. Server replied HTTP code: ${response.code}"))
            }
        } catch (e: Exception) {
            Log.e("LocalDeviceApi", "Download string error: ${e.message}")
            Result.failure(e)
        }
    }

    suspend fun deleteFile(filePath: String): Result<String> = withContext(Dispatchers.IO) {
        try {
            val body = ByteArray(0).toRequestBody(null, 0, 0)
            val request = Request.Builder()
                .url("${baseUrl}delete/$filePath")
                .post(body)
                .build()
            val response = client.newCall(request).execute()
            if (response.isSuccessful) {
                Result.success("File deleted")
            } else {
                Result.failure(Exception("Problem with delete. Server replied HTTP code: ${response.code}"))
            }
        } catch (e: Exception) {
            Log.e("LocalDeviceApi", "Delete error: ${e.message}")
            Result.failure(e)
        }
    }

    suspend fun uploadFile(path: String, data: ByteArray, filename: String): Result<String> = withContext(Dispatchers.IO) {
        try {
            val lineEnd = "\r\n"
            val twoHyphens = "--"
            val boundary = NetworkClient.MULTIPART_BOUNDARY

            val outputStream = ByteArrayOutputStream()
            outputStream.write(("$twoHyphens$boundary$lineEnd").toByteArray())
            outputStream.write(("Content-Disposition: form-data; name=\"file\"; filename=\"$filename\"$lineEnd").toByteArray())
            outputStream.write(("Content-Type: application/octet-stream$lineEnd").toByteArray())
            outputStream.write(lineEnd.toByteArray())
            outputStream.write(data)
            outputStream.write(lineEnd.toByteArray())
            outputStream.write(("$twoHyphens$boundary$twoHyphens$lineEnd").toByteArray())

            val body = outputStream.toByteArray().toRequestBody(
                "multipart/form-data;boundary=$boundary".toMediaType()
            )

            val request = Request.Builder()
                .url("$baseUrl$path")
                .post(body)
                .build()

            val response = client.newCall(request).execute()
            if (response.isSuccessful) {
                Result.success("Uploaded")
            } else {
                Result.failure(Exception("Problem with upload. Server replied HTTP code: ${response.code}"))
            }
        } catch (e: Exception) {
            Log.e("LocalDeviceApi", "Upload error: ${e.message}")
            Result.failure(e)
        }
    }
}
