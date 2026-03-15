package com.poverka.app.data.model

import android.os.Parcelable
import kotlinx.parcelize.Parcelize

@Parcelize
data class MeasurementResults(
    val measurementNumber: Int = 0,
    val reiterationNumber: Int = 0,
    val measSettings: MeasurementSettings? = null,
    val impLiter: Int = 0,
    var consumptionCurImp: Int = 0,
    var consumptionCurLit: Float = 0f,
    var consumptionAvrgImp: Int = 0,
    var consumptionAvrgLit: Float = 0f,
    var duration: Int = 0,
    var error: Int = 0,
    var valStart: Int = 0,
    var valEnd: Int = 0,
    var volumeCurImp: Int = 0,
    var volumeCurLit: Float = 0f,
    var waterTemperature: Float = 0f,
    var result: Int = RESULT_UNKNOWN,
    var photoStart: ByteArray? = null,
    var photoEnd: ByteArray? = null
) : Parcelable {

    companion object {
        const val RESULT_UNKNOWN = 0
        const val RESULT_VALID = 1
        const val RESULT_INVALID = 2
    }
}
