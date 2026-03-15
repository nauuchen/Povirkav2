package com.poverka.app.data.model

data class Address(val id: Int, val name: String) : Comparable<Address> {
    override fun compareTo(other: Address): Int = name.compareTo(other.name)
    override fun toString(): String = name
}

data class Town(val id: Int, val name: String) : Comparable<Town> {
    override fun compareTo(other: Town): Int = name.compareTo(other.name)
    override fun toString(): String = name
}

data class Street(val id: Int, val townId: Int, val name: String) : Comparable<Street> {
    override fun compareTo(other: Street): Int = name.compareTo(other.name)
    override fun toString(): String = name
}

data class Apartment(
    val id: Int,
    val streetId: Int,
    val building: String,
    val apartment: String
) {
    override fun toString(): String = "буд. $building, кв. $apartment"
}
