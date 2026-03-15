package com.poverka.app.data.model

import android.os.Parcelable
import kotlinx.parcelize.Parcelize

@Parcelize
data class CounterVerification(
    var id: String = "",
    var personalAccount: String = "",
    var local: Int = 0,
    var environmentT: Int = 0,
    var environmentH: Int = 0,
    var environmentP: Int = 0,
    var latitude: Double = 0.0,
    var longitude: Double = 0.0,
    var innerTemperature: Float = 0f,
    var innerHumidity: Float = 0f,
    var counterNumber: String = "",
    var startVolume: Int = 0,
    var productionYear: Int = 0,
    var dnType: Int = 0,
    var serviceType: Int = 0,
    var paymentAccount: Int = 0,
    var stationNumber: Int = 0,
    var testName: Int = 0,
    var multiplier: Int = 1,
    var verificationDate: Int = 0,
    var productionDate: Int = 0,
    var batteryCharge: Float = 0f,
    var waterTemperature: Float = 0f,
    var isOnline: Int = 0,
    var action: Int = 0,
    var verificationNumberNew: Int = 0,
    var verificationNumberToday: Int = 0,
    var impulsesPerLiter: Int = 0,
    var verAndroid: String = "",
    var verStation: String = "",
    var workInShortMode: Boolean = false,
    var char1: String = "",
    var char2: String = "",
    var dueDate: Int = 0,
    var currentStationTime: Int = 0,
    var measResults: ArrayList<MeasurementResults> = arrayListOf(),
    var measSettings: ArrayList<MeasurementSettings> = arrayListOf(),
    var testPhoto: ByteArray? = null
) : Parcelable {

    fun setCounterInfo(counterNumber: String, volume: Int, year: Int, dnType: Int) {
        this.counterNumber = counterNumber
        this.startVolume = volume
        this.productionYear = year
        this.dnType = dnType
    }
}
