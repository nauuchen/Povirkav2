package com.poverka.app.data.model

data class Address(
    val id: Int,
    val name: String
) : Comparable<Address> {
    override fun compareTo(other: Address): Int = name.compareTo(other.name)
    override fun toString(): String = name
}

data class Town(
    val id: Int,
    val name: String
) : Comparable<Town> {
    override fun compareTo(other: Town): Int = name.compareTo(other.name)
    override fun toString(): String = name
}

data class Street(
    val id: Int,
    val name: String
) : Comparable<Street> {
    override fun compareTo(other: Street): Int = name.compareTo(other.name)
    override fun toString(): String = name
}

data class Apartment(
    val id: Int,
    val number: String,
    val korpus: String = "",
    val building: Int = 0,
    val letter: String = ""
) {
    override fun toString(): String = number
}
