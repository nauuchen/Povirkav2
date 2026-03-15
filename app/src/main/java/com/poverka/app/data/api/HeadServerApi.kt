package com.poverka.app.data.api

import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import java.io.File
import java.io.FileInputStream
import java.io.InputStream

class HeadServerApi(private val client: OkHttpClient = NetworkClient.createOkHttpClient()) {

    private val authorization = NetworkClient.buildCredentials()
    private val baseUrl = NetworkClient.HEAD_SERVER_BASE

    suspend fun download(path: String): Result<String> = withContext(Dispatchers.IO) {
        try {
            val request = Request.Builder()
                .url("$baseUrl$path")
                .addHeader("Authorization", authorization)
                .get()
                .build()
            val response = client.newCall(request).execute()
            if (response.isSuccessful) {
                Result.success(response.body?.string() ?: "")
            } else {
                Result.failure(Exception("Server replied HTTP code: ${response.code}"))
            }
        } catch (e: Exception) {
            Log.e("HeadServerApi", "Download error: ${e.message}")
            Result.failure(e)
        }
    }

    suspend fun downloadBytes(path: String): Result<ByteArray> = withContext(Dispatchers.IO) {
        try {
            val request = Request.Builder()
                .url("$baseUrl$path")
                .addHeader("Authorization", authorization)
                .get()
                .build()
            val response = client.newCall(request).execute()
            if (response.isSuccessful) {
                Result.success(response.body?.bytes() ?: ByteArray(0))
            } else {
                Result.failure(Exception("Server replied HTTP code: ${response.code}"))
            }
        } catch (e: Exception) {
            Log.e("HeadServerApi", "Download bytes error: ${e.message}")
            Result.failure(e)
        }
    }

    suspend fun upload(path: String, file: File): Result<String> = withContext(Dispatchers.IO) {
        try {
            val lineEnd = "\r\n"
            val twoHyphens = "--"
            val boundary = NetworkClient.MULTIPART_BOUNDARY

            val outputStream = java.io.ByteArrayOutputStream()
            outputStream.write(("$twoHyphens$boundary$lineEnd").toByteArray())
            outputStream.write(("Content-Disposition: form-data; name=\"file\"; filename=\"${file.name}\"$lineEnd").toByteArray())
            outputStream.write(("Content-Type: application/octet-stream$lineEnd").toByteArray())
            outputStream.write(lineEnd.toByteArray())

            val fis = FileInputStream(file)
            val buffer = ByteArray(4096)
            var len: Int
            while (fis.read(buffer).also { len = it } != -1) {
                outputStream.write(buffer, 0, len)
            }
            fis.close()

            outputStream.write(lineEnd.toByteArray())
            outputStream.write(("$twoHyphens$boundary$twoHyphens$lineEnd").toByteArray())

            val body = outputStream.toByteArray().toRequestBody(
                "multipart/form-data;boundary=$boundary".toMediaType()
            )

            val request = Request.Builder()
                .url("$baseUrl$path")
                .addHeader("Authorization", authorization)
                .addHeader("file", file.name)
                .post(body)
                .build()

            val response = client.newCall(request).execute()
            if (response.isSuccessful) {
                Result.success("Uploaded to server")
            } else {
                Result.failure(Exception("Problem with upload. Server replied HTTP code: ${response.code}"))
            }
        } catch (e: Exception) {
            Log.e("HeadServerApi", "Upload error: ${e.message}")
            Result.failure(e)
        }
    }
}
