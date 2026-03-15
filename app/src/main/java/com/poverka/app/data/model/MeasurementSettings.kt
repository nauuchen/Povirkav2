package com.poverka.app.data.model

import android.os.Parcel
import android.os.Parcelable

data class MeasurementSettings(
    val testName: Int = 0,
    val flow: Float = 0f,
    val duration: Int = 0,
    val lowLimit: Float = 0f,
    val highLimit: Float = 0f
) : Parcelable {
    constructor(parcel: Parcel) : this(
        parcel.readInt(),
        parcel.readFloat(),
        parcel.readInt(),
        parcel.readFloat(),
        parcel.readFloat()
    )

    override fun writeToParcel(parcel: Parcel, flags: Int) {
        parcel.writeInt(testName)
        parcel.writeFloat(flow)
        parcel.writeInt(duration)
        parcel.writeFloat(lowLimit)
        parcel.writeFloat(highLimit)
    }

    override fun describeContents(): Int = 0

    companion object CREATOR : Parcelable.Creator<MeasurementSettings> {
        override fun createFromParcel(parcel: Parcel): MeasurementSettings = MeasurementSettings(parcel)
        override fun newArray(size: Int): Array<MeasurementSettings?> = arrayOfNulls(size)
    }
}
