package com.poverka.app.data.model

import android.os.Parcel
import android.os.Parcelable

data class MeasurementResults(
    val testName: Int = 0,
    val firstVal: Float = 0f,
    val lastVal: Float = 0f,
    val curCon: Float = 0f,
    val avgCon: Float = 0f,
    val result: Int = 0,  // 0 = unknown, 1 = valid, 2 = invalid
    val calcError: Float = 0f,
    val integr: Float = 0f,
    val duration: Int = 0,
    val reitNumb: Int = 0
) : Parcelable {
    constructor(parcel: Parcel) : this(
        parcel.readInt(),
        parcel.readFloat(),
        parcel.readFloat(),
        parcel.readFloat(),
        parcel.readFloat(),
        parcel.readInt(),
        parcel.readFloat(),
        parcel.readFloat(),
        parcel.readInt(),
        parcel.readInt()
    )

    override fun writeToParcel(parcel: Parcel, flags: Int) {
        parcel.writeInt(testName)
        parcel.writeFloat(firstVal)
        parcel.writeFloat(lastVal)
        parcel.writeFloat(curCon)
        parcel.writeFloat(avgCon)
        parcel.writeInt(result)
        parcel.writeFloat(calcError)
        parcel.writeFloat(integr)
        parcel.writeInt(duration)
        parcel.writeInt(reitNumb)
    }

    override fun describeContents(): Int = 0

    companion object CREATOR : Parcelable.Creator<MeasurementResults> {
        override fun createFromParcel(parcel: Parcel): MeasurementResults = MeasurementResults(parcel)
        override fun newArray(size: Int): Array<MeasurementResults?> = arrayOfNulls(size)
    }
}
