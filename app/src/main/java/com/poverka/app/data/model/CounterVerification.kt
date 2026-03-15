package com.poverka.app.data.model

import android.os.Parcel
import android.os.Parcelable

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
    // Counter info
    var counterNumber: String = "",
    var initialVolume: Int = 0,
    var productionYear: Int = 0,
    var dnTypeNumber: Int = 0,
    var typeId: Int = 0,
    var testName: Int = 0,
    // Protocol and verification info
    var verificationDate: Int = 0,
    var verificationNumberNew: Int = 0,
    var verificationNumberToday: Int = 0,
    var stationNumber: Int = 0,
    var action: Int = 0,
    var serviceType: Int = 0,
    var paymentAccount: Int = 0,
    var dueDate: Int = 0,
    var productionDate: Int = 0,
    var isOnline: Int = 0,
    var multiplier: Int = 1,
    var impulsesPerLiter: Int = 0,
    var batteryCharge: Float = 0f,
    var waterTemperature: Float = 0f,
    var currentStationTime: Int = 0,
    var workInShortMode: Boolean = false,
    var char1: String = "",
    var char2: String = "",
    var verAndroid: String = "",
    var verStation: String = "",
    var testPhoto: ByteArray? = null,
    var measSettings: Array<MeasurementSettings>? = null,
    var measResults: ArrayList<MeasurementResults> = ArrayList()
) : Parcelable {

    constructor(parcel: Parcel) : this(
        id = parcel.readString() ?: "",
        personalAccount = parcel.readString() ?: "",
        local = parcel.readInt(),
        environmentT = parcel.readInt(),
        environmentH = parcel.readInt(),
        environmentP = parcel.readInt(),
        latitude = parcel.readDouble(),
        longitude = parcel.readDouble(),
        innerTemperature = parcel.readFloat(),
        innerHumidity = parcel.readFloat(),
        counterNumber = parcel.readString() ?: "",
        initialVolume = parcel.readInt(),
        productionYear = parcel.readInt(),
        dnTypeNumber = parcel.readInt(),
        typeId = parcel.readInt(),
        testName = parcel.readInt(),
        verificationDate = parcel.readInt(),
        verificationNumberNew = parcel.readInt(),
        verificationNumberToday = parcel.readInt(),
        stationNumber = parcel.readInt(),
        action = parcel.readInt(),
        serviceType = parcel.readInt(),
        paymentAccount = parcel.readInt(),
        dueDate = parcel.readInt(),
        productionDate = parcel.readInt(),
        isOnline = parcel.readInt(),
        multiplier = parcel.readInt(),
        impulsesPerLiter = parcel.readInt(),
        batteryCharge = parcel.readFloat(),
        waterTemperature = parcel.readFloat(),
        currentStationTime = parcel.readInt(),
        workInShortMode = parcel.readByte() != 0.toByte(),
        char1 = parcel.readString() ?: "",
        char2 = parcel.readString() ?: "",
        verAndroid = parcel.readString() ?: "",
        verStation = parcel.readString() ?: "",
        testPhoto = parcel.createByteArray(),
        measResults = ArrayList<MeasurementResults>().also { list ->
            parcel.readList(list, MeasurementResults::class.java.classLoader)
        }
    )

    fun setCounterInfo(counterNumber: String, volume: Int, year: Int, dnType: Int) {
        this.counterNumber = counterNumber
        this.initialVolume = volume
        this.productionYear = year
        this.dnTypeNumber = dnType
    }

    override fun writeToParcel(parcel: Parcel, flags: Int) {
        parcel.writeString(id)
        parcel.writeString(personalAccount)
        parcel.writeInt(local)
        parcel.writeInt(environmentT)
        parcel.writeInt(environmentH)
        parcel.writeInt(environmentP)
        parcel.writeDouble(latitude)
        parcel.writeDouble(longitude)
        parcel.writeFloat(innerTemperature)
        parcel.writeFloat(innerHumidity)
        parcel.writeString(counterNumber)
        parcel.writeInt(initialVolume)
        parcel.writeInt(productionYear)
        parcel.writeInt(dnTypeNumber)
        parcel.writeInt(typeId)
        parcel.writeInt(testName)
        parcel.writeInt(verificationDate)
        parcel.writeInt(verificationNumberNew)
        parcel.writeInt(verificationNumberToday)
        parcel.writeInt(stationNumber)
        parcel.writeInt(action)
        parcel.writeInt(serviceType)
        parcel.writeInt(paymentAccount)
        parcel.writeInt(dueDate)
        parcel.writeInt(productionDate)
        parcel.writeInt(isOnline)
        parcel.writeInt(multiplier)
        parcel.writeInt(impulsesPerLiter)
        parcel.writeFloat(batteryCharge)
        parcel.writeFloat(waterTemperature)
        parcel.writeInt(currentStationTime)
        parcel.writeByte(if (workInShortMode) 1 else 0)
        parcel.writeString(char1)
        parcel.writeString(char2)
        parcel.writeString(verAndroid)
        parcel.writeString(verStation)
        parcel.writeByteArray(testPhoto)
        parcel.writeList(measResults)
    }

    override fun describeContents(): Int = 0

    companion object CREATOR : Parcelable.Creator<CounterVerification> {
        override fun createFromParcel(parcel: Parcel): CounterVerification = CounterVerification(parcel)
        override fun newArray(size: Int): Array<CounterVerification?> = arrayOfNulls(size)
    }
}
