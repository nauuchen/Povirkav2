package com.poverka.app.util

import android.util.Base64
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.MultipartBody
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import com.poverka.app.data.model.CounterVerification
import com.poverka.app.data.model.MeasurementResults

/**
 * Handles serialization of CounterVerification data to JSON for sending to the head server.
 * Matches the original MySender / MyJSON serialization pattern.
 */
object MySender {

    fun buildProtocolJson(cv: CounterVerification): String {
        return JSONObject().apply {
            put(MyJSON.ID, cv.id)
            put(MyJSON.LOCAL, cv.local)
            put(MyJSON.SERVICE_TYPE, cv.serviceType)
            put(MyJSON.PERSONAL_ACCOUNT, cv.personalAccount)
            put(MyJSON.PAYMENT_ACCOUNT, cv.paymentAccount)
            put(MyJSON.LATITUDE, cv.latitude)
            put(MyJSON.LONGITUDE, cv.longitude)
            put(MyJSON.TEMPERATURE, cv.environmentT)
            put(MyJSON.PRESSURE, cv.environmentP)
            put(MyJSON.HUMIDITY, cv.environmentH)
            put(MyJSON.COUNTER_NUMBER, cv.counterNumber)
            put(MyJSON.START_VOLUME, cv.startVolume)
            put(MyJSON.PRODUCTION_YEAR, cv.productionYear)
            put(MyJSON.TYPE_ID, cv.dnType)
            put(MyJSON.TEST_NAME, cv.testName)
            put(MyJSON.MULTIPLIER, cv.multiplier)
            put(MyJSON.WATER_TEMPERATURE, cv.waterTemperature)
            put(MyJSON.VERIF_DATE, cv.verificationDate)
            put(MyJSON.PROD_DATE, cv.productionDate)
            put(MyJSON.STATION, cv.stationNumber)
            put(MyJSON.CHARGE_BATT, cv.batteryCharge)
            put(MyJSON.ONLINE, cv.isOnline)
            put(MyJSON.VERIF_NUMBER, cv.verificationNumberNew)
            put(MyJSON.VERIF_TODAY, cv.verificationNumberToday)
            put(MyJSON.IMP_LITER, cv.impulsesPerLiter)
            put(MyJSON.VER_SOFT, cv.verAndroid)
            put(MyJSON.ACTION, cv.action)
            cv.testPhoto?.let { put(MyJSON.TEST_PHOTO, Base64.encodeToString(it, Base64.NO_WRAP)) }

            val measArray = JSONArray()
            cv.measResults.forEach { mr ->
                measArray.put(buildMeasurementJson(mr))
            }
            put("measurements", measArray)
        }.toString()
    }

    private fun buildMeasurementJson(mr: MeasurementResults): JSONObject {
        return JSONObject().apply {
            put(MyJSON.MEAS_NUMB, mr.measurementNumber)
            put(MyJSON.REIT_NUMB, mr.reiterationNumber)
            put(MyJSON.DURATION, mr.duration)
            put(MyJSON.FIRST_VAL, mr.valStart)
            put(MyJSON.LAST_VAL, mr.valEnd)
            put(MyJSON.CUR_CON, mr.consumptionCurLit)
            put(MyJSON.AVERAGE_CON, mr.consumptionAvrgLit)
            put(MyJSON.CUR_VOLUME, mr.volumeCurLit)
            put(MyJSON.CALC_ERROR, mr.error)
            put(MyJSON.RESULT, mr.result)
            put(MyJSON.TEMPER, mr.waterTemperature)
            mr.photoStart?.let { put("photo_start", Base64.encodeToString(it, Base64.NO_WRAP)) }
            mr.photoEnd?.let { put("photo_end", Base64.encodeToString(it, Base64.NO_WRAP)) }
        }
    }

    fun buildMultipartBody(fileName: String, fileContent: ByteArray): MultipartBody {
        val mediaType = "application/octet-stream".toMediaTypeOrNull()
        val requestBody = fileContent.toRequestBody(mediaType)
        return MultipartBody.Builder("*****")
            .setType(MultipartBody.FORM)
            .addFormDataPart("file", fileName, requestBody)
            .build()
    }
}
