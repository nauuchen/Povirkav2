package com.poverka.app.util

import android.content.Context
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AlertDialog

fun Context.showToast(message: String, duration: Int = Toast.LENGTH_SHORT) {
    Toast.makeText(this, message, duration).show()
}

fun Context.showAlert(title: String, message: String, onOk: (() -> Unit)? = null) {
    AlertDialog.Builder(this)
        .setTitle(title)
        .setMessage(message)
        .setPositiveButton("OK") { _, _ -> onOk?.invoke() }
        .show()
}

fun Context.showConfirmDialog(
    title: String,
    message: String,
    positiveText: String = "Так",
    negativeText: String = "Скасувати",
    onPositive: () -> Unit,
    onNegative: (() -> Unit)? = null
) {
    AlertDialog.Builder(this)
        .setTitle(title)
        .setMessage(message)
        .setPositiveButton(positiveText) { _, _ -> onPositive() }
        .setNegativeButton(negativeText) { _, _ -> onNegative?.invoke() }
        .show()
}

fun View.visible() { visibility = View.VISIBLE }
fun View.gone() { visibility = View.GONE }
fun View.invisible() { visibility = View.INVISIBLE }

fun String.isValidIp(): Boolean {
    val parts = split(".")
    if (parts.size != 4) return false
    return parts.all { part ->
        val num = part.toIntOrNull() ?: return false
        num in 0..255
    }
}
