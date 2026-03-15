package com.poverka.app.data.model

import android.os.Parcelable
import kotlinx.parcelize.Parcelize

@Parcelize
data class MeasurementSettings(
    val id: Int = 0,
    val testName: Int = 0,
    val number: Int = 0,
    val consumptionLit: Int = 0,
    val volumeLit: Int = 0,
    val highLimit: Int = 0,
    val lowLimit: Int = 0,
    val error: Int = 0,
    val impLiter: Int = 0,
    val consumptionImp: Int = 0,
    val volumeImp: Int = 0
) : Parcelable
