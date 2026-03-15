package com.poverka.app.data.remote

import okhttp3.MultipartBody
import okhttp3.RequestBody
import okhttp3.ResponseBody
import retrofit2.Response
import retrofit2.http.*

/**
 * Retrofit service for the head metrology server at https://head-point.serrp.info:9443/
 */
interface HeadApiService {

    @GET("{path}")
    suspend fun download(
        @Header("Authorization") authorization: String,
        @Path("path", encoded = true) path: String
    ): Response<ResponseBody>

    @POST("{path}")
    @Multipart
    suspend fun upload(
        @Header("Authorization") authorization: String,
        @Header("file") fileName: String,
        @Path("path", encoded = true) path: String,
        @Part file: MultipartBody.Part
    ): Response<ResponseBody>

    @POST("{path}")
    suspend fun uploadRaw(
        @Header("Authorization") authorization: String,
        @Header("file") fileName: String,
        @Path("path", encoded = true) path: String,
        @Body body: RequestBody
    ): Response<ResponseBody>
}

/**
 * Retrofit service for the local measurement device at http://{IP}/
 */
interface LocalDeviceApiService {

    @GET("{path}")
    @Headers(
        "Connection: Keep-Alive",
        "Cache-Control: no-cache"
    )
    suspend fun get(
        @Path("path", encoded = true) path: String
    ): Response<ResponseBody>

    @POST("delete/{filePath}")
    suspend fun delete(
        @Path("filePath", encoded = true) filePath: String
    ): Response<ResponseBody>
}
