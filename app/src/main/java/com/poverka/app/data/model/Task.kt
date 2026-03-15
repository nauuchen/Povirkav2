package com.poverka.app.data.model

data class Task(
    val id: Int = 0,
    val fullAddress: String = "",
    val fullApartment: String = "",
    val time: String = "",
    val surname: String = "",
    val status: Int = 0,  // 0 = new, 1 = done, 2 = dismissed
    val serviceType: String = "",
    val note: String = "",
    val dayId: Int = 0,
    val personalAccount: String = "",
    val paymentAccount: Int = 0,
    val stationNumber: Int = 0
) {
    companion object {
        const val STATUS_NEW = 0
        const val STATUS_DONE = 1
        const val STATUS_DISMISSED = 2
        const val STATUS_IN_PROGRESS = 3
    }

    fun getDisplayAddress(): String = "$fullAddress, кв. $fullApartment"
}

data class Day(
    val id: Int = 0,
    val date: String = "",
    val newCount: Int = 0,
    val cancelCount: Int = 0,
    val doneCountDisp: Int = 0,
    val doneCountSolo: Int = 0,
    val tasks: ArrayList<Task> = ArrayList()
)

data class TaskResult(
    val taskId: Int = 0,
    val result: Int = 0,
    val note: String = ""
)
