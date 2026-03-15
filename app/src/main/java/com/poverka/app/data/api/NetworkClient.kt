package com.poverka.app.data.api

import okhttp3.OkHttpClient
import okhttp3.logging.OkHttpLoggingInterceptor
import java.security.SecureRandom
import java.security.cert.X509Certificate
import java.util.concurrent.TimeUnit
import javax.net.ssl.SSLContext
import javax.net.ssl.TrustManager
import javax.net.ssl.X509TrustManager

object NetworkClient {

    const val HEAD_SERVER_BASE = "https://head-point.serrp.info:9443/"
    const val HEAD_SERVER_USER = "station_head1"
    const val HEAD_SERVER_PASSWORD = "I8X_V..oe%OX"
    const val MULTIPART_BOUNDARY = "*****"

    fun buildCredentials(): String {
        val auth = "$HEAD_SERVER_USER:$HEAD_SERVER_PASSWORD"
        val encoded = android.util.Base64.encode(auth.toByteArray(Charsets.UTF_8), android.util.Base64.NO_WRAP)
        return "Basic ${String(encoded)}"
    }

    fun buildLocalUrl(ip: String, path: String = ""): String =
        "http://$ip/$path"

    fun createOkHttpClient(): OkHttpClient {
        return try {
            val trustAllCerts = arrayOf<TrustManager>(object : X509TrustManager {
                override fun checkClientTrusted(chain: Array<X509Certificate>, authType: String) = Unit
                override fun checkServerTrusted(chain: Array<X509Certificate>, authType: String) = Unit
                override fun getAcceptedIssuers(): Array<X509Certificate> = arrayOf()
            })
            val sslContext = SSLContext.getInstance("SSL")
            sslContext.init(null, trustAllCerts, SecureRandom())
            OkHttpClient.Builder()
                .sslSocketFactory(sslContext.socketFactory, trustAllCerts[0] as X509TrustManager)
                .hostnameVerifier { _, _ -> true }
                .connectTimeout(30, TimeUnit.SECONDS)
                .readTimeout(60, TimeUnit.SECONDS)
                .writeTimeout(60, TimeUnit.SECONDS)
                .build()
        } catch (e: Exception) {
            OkHttpClient.Builder()
                .connectTimeout(30, TimeUnit.SECONDS)
                .readTimeout(60, TimeUnit.SECONDS)
                .writeTimeout(60, TimeUnit.SECONDS)
                .build()
        }
    }
}
