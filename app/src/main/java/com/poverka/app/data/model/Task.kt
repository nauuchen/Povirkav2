package com.poverka.app.data.model

data class Task(
    val id: Int = 0,
    val fullAddress: String = "",
    val fullApartment: String = "",
    val time: String = "",
    val surname: String = "",
    val status: Int = 0,
    val personalAccount: String = "",
    val serviceType: Int = 0,
    val phoneMain: String = "",
    val phoneDop: String = "",
    val phoneDop2: String = ""
) {
    fun getDisplayAddress(): String = "$fullAddress, кв. $fullApartment"
}

data class TaskResult(
    val taskId: Int,
    val status: Int,
    val date: String,
    val comment: String = ""
)

data class Day(
    val date: String,
    val tasks: List<Task> = emptyList()
)
