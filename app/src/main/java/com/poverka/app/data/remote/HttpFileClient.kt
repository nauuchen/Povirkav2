package com.poverka.app.data.remote

import android.util.Base64
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.util.concurrent.TimeUnit

/**
 * HTTP client equivalent to the original HttpFileClient.
 * Handles communication with both the head server and local measurement device.
 */
class HttpFileClient(
    private val listener: OnMessageReceived? = null
) {

    interface OnMessageReceived {
        fun onMessageReceived(type: MessageType, message: String, data: ByteArray? = null)
        fun onProgress(progress: Int)
        fun onError(type: MessageType, error: String)
    }

    enum class MessageType {
        SHOW, DELETE, HEAD_DOWNLOAD, HEAD_UPLOAD, HEAD_DOWNLOAD_APK,
        LOCAL_DOWNLOAD, LOCAL_UPLOAD
    }

    companion object {
        const val HEAD_SERVER = "head-point.serrp.info:9443"
        const val HEAD_SERVER_URL = "https://head-point.serrp.info:9443/"
        private const val TAG = "HttpFileClient"

        private val headCredentials: String by lazy {
            val credentials = "station_head1:I8X_V..oe%OX"
            "Basic " + Base64.encodeToString(credentials.toByteArray(), Base64.NO_WRAP)
        }

        fun getAuthorizationHeader(): String = headCredentials

        fun buildOkHttpClient(): OkHttpClient {
            val logging = HttpLoggingInterceptor().apply {
                level = HttpLoggingInterceptor.Level.BASIC
            }
            return OkHttpClient.Builder()
                .addInterceptor(logging)
                .connectTimeout(30, TimeUnit.SECONDS)
                .readTimeout(60, TimeUnit.SECONDS)
                .writeTimeout(60, TimeUnit.SECONDS)
                .build()
        }

        fun buildHeadRetrofit(): Retrofit {
            return Retrofit.Builder()
                .baseUrl(HEAD_SERVER_URL)
                .client(buildOkHttpClient())
                .addConverterFactory(GsonConverterFactory.create())
                .build()
        }

        fun buildLocalRetrofit(ip: String): Retrofit {
            return Retrofit.Builder()
                .baseUrl("http://$ip/")
                .client(
                    OkHttpClient.Builder()
                        .addInterceptor { chain ->
                            val request = chain.request().newBuilder()
                                .header("Connection", "Keep-Alive")
                                .header("Cache-Control", "no-cache")
                                .build()
                            chain.proceed(request)
                        }
                        .connectTimeout(10, TimeUnit.SECONDS)
                        .readTimeout(30, TimeUnit.SECONDS)
                        .build()
                )
                .addConverterFactory(GsonConverterFactory.create())
                .build()
        }
    }

    private val okHttpClient = buildOkHttpClient()

    /**
     * ShowThread equivalent: GET from local device.
     */
    suspend fun showFromDevice(ip: String, path: String): Result<ByteArray> {
        return withContext(Dispatchers.IO) {
            try {
                val url = "http://$ip/$path"
                val request = Request.Builder()
                    .url(url)
                    .header("Connection", "Keep-Alive")
                    .header("Cache-Control", "no-cache")
                    .get()
                    .build()
                val response = okHttpClient.newCall(request).execute()
                if (response.isSuccessful) {
                    val bytes = response.body?.bytes() ?: ByteArray(0)
                    listener?.onMessageReceived(MessageType.SHOW, "OK", bytes)
                    Result.success(bytes)
                } else {
                    val err = "HTTP ${response.code}"
                    listener?.onError(MessageType.SHOW, err)
                    Result.failure(Exception(err))
                }
            } catch (e: Exception) {
                Log.e(TAG, "showFromDevice error", e)
                listener?.onError(MessageType.SHOW, e.message ?: "Unknown error")
                Result.failure(e)
            }
        }
    }

    /**
     * DeleteThread equivalent: POST delete to local device.
     */
    suspend fun deleteFromDevice(ip: String, filePath: String): Result<Unit> {
        return withContext(Dispatchers.IO) {
            try {
                val url = "http://$ip/delete/$filePath"
                val request = Request.Builder()
                    .url(url)
                    .header("Connection", "Keep-Alive")
                    .header("Cache-Control", "no-cache")
                    .post("".toRequestBody())
                    .build()
                val response = okHttpClient.newCall(request).execute()
                if (response.isSuccessful) {
                    listener?.onMessageReceived(MessageType.DELETE, "OK")
                    Result.success(Unit)
                } else {
                    val err = "HTTP ${response.code}"
                    listener?.onError(MessageType.DELETE, err)
                    Result.failure(Exception(err))
                }
            } catch (e: Exception) {
                Log.e(TAG, "deleteFromDevice error", e)
                listener?.onError(MessageType.DELETE, e.message ?: "Unknown error")
                Result.failure(e)
            }
        }
    }

    /**
     * HeadDownloadServer equivalent: GET from head server with Authorization.
     */
    suspend fun downloadFromHeadServer(path: String): Result<ByteArray> {
        return withContext(Dispatchers.IO) {
            try {
                val url = "$HEAD_SERVER_URL$path"
                val request = Request.Builder()
                    .url(url)
                    .header("Authorization", headCredentials)
                    .get()
                    .build()
                val response = okHttpClient.newCall(request).execute()
                if (response.code == 200) {
                    val bytes = response.body?.bytes() ?: ByteArray(0)
                    listener?.onMessageReceived(MessageType.HEAD_DOWNLOAD, "OK", bytes)
                    Result.success(bytes)
                } else {
                    val err = "HTTP ${response.code}"
                    listener?.onError(MessageType.HEAD_DOWNLOAD, err)
                    Result.failure(Exception(err))
                }
            } catch (e: Exception) {
                Log.e(TAG, "downloadFromHeadServer error", e)
                listener?.onError(MessageType.HEAD_DOWNLOAD, e.message ?: "Unknown error")
                Result.failure(e)
            }
        }
    }

    /**
     * HeadUploadServer equivalent: POST multipart to head server with Authorization.
     * Uses boundary=***** as in original.
     */
    suspend fun uploadToHeadServer(path: String, fileName: String, data: ByteArray): Result<Unit> {
        return withContext(Dispatchers.IO) {
            try {
                val boundary = "*****"
                val contentType = "multipart/form-data;boundary=$boundary"

                val bodyBuilder = StringBuilder()
                bodyBuilder.append("--$boundary\r\n")
                bodyBuilder.append("Content-Disposition: form-data; name=\"file\";filename=\"$fileName\"\r\n")
                bodyBuilder.append("\r\n")

                val headerBytes = bodyBuilder.toString().toByteArray(Charsets.UTF_8)
                val footerBytes = "\r\n--$boundary--\r\n".toByteArray(Charsets.UTF_8)

                val fullBody = headerBytes + data + footerBytes

                val requestBody = fullBody.toRequestBody(contentType.toMediaTypeOrNull())
                val url = "$HEAD_SERVER_URL$path"

                val request = Request.Builder()
                    .url(url)
                    .header("Authorization", headCredentials)
                    .header("file", fileName)
                    .post(requestBody)
                    .build()

                val response = okHttpClient.newCall(request).execute()
                if (response.code == 200) {
                    listener?.onMessageReceived(MessageType.HEAD_UPLOAD, "Uploaded to server")
                    Result.success(Unit)
                } else {
                    val err = "Problem with upload. Server replied HTTP code: ${response.code}"
                    listener?.onError(MessageType.HEAD_UPLOAD, err)
                    Result.failure(Exception(err))
                }
            } catch (e: Exception) {
                Log.e(TAG, "uploadToHeadServer error", e)
                listener?.onError(MessageType.HEAD_UPLOAD, e.message ?: "Unknown error")
                Result.failure(e)
            }
        }
    }

    /**
     * HeadDownloadApk equivalent: Downloads APK update with progress.
     */
    suspend fun downloadApkUpdate(path: String, onProgress: (Int) -> Unit): Result<ByteArray> {
        return withContext(Dispatchers.IO) {
            try {
                val url = "$HEAD_SERVER_URL$path"
                val request = Request.Builder()
                    .url(url)
                    .header("Authorization", headCredentials)
                    .get()
                    .build()
                val response = okHttpClient.newCall(request).execute()
                if (response.code == 200) {
                    val body = response.body ?: throw Exception("Empty body")
                    val contentLength = body.contentLength()
                    val source = body.byteStream()
                    val buffer = ByteArray(4096)
                    val result = java.io.ByteArrayOutputStream()
                    var bytesRead = 0L
                    var read: Int
                    while (source.read(buffer).also { read = it } != -1) {
                        result.write(buffer, 0, read)
                        bytesRead += read
                        if (contentLength > 0) {
                            val progress = (bytesRead * 100 / contentLength).toInt()
                            onProgress(progress)
                            listener?.onProgress(progress)
                        }
                    }
                    val bytes = result.toByteArray()
                    listener?.onMessageReceived(MessageType.HEAD_DOWNLOAD_APK, "APK downloaded", bytes)
                    Result.success(bytes)
                } else {
                    val err = "HTTP ${response.code}"
                    listener?.onError(MessageType.HEAD_DOWNLOAD_APK, err)
                    Result.failure(Exception(err))
                }
            } catch (e: Exception) {
                Log.e(TAG, "downloadApkUpdate error", e)
                listener?.onError(MessageType.HEAD_DOWNLOAD_APK, e.message ?: "Unknown error")
                Result.failure(e)
            }
        }
    }
}
