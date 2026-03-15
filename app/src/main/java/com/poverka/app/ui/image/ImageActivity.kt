package com.poverka.app.ui.image

import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Matrix
import android.os.Bundle
import android.view.ScaleGestureDetector
import android.view.View
import android.widget.EditText
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.google.zxing.integration.android.IntentIntegrator
import com.poverka.app.R
import com.poverka.app.databinding.ActivityImageBinding

class ImageActivity : AppCompatActivity() {

    private lateinit var binding: ActivityImageBinding
    private var layoutType: Int = LAYOUT_COUNTER
    private var currentBitmap: Bitmap? = null
    private var scaleGestureDetector: ScaleGestureDetector? = null
    private var scaleFactor = 1.0f

    companion object {
        const val EXTRA_LAYOUT_TYPE = "layout_type"
        const val LAYOUT_COUNTER = 0
        const val LAYOUT_BARCODE = 1
        const val RESULT_COUNTER_NUMBER = "counter_number"
        const val RESULT_VOLUME = "volume"
        const val RESULT_YEAR = "year"
        const val RESULT_DN_TYPE = "dn_type"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityImageBinding.inflate(layoutInflater)
        setContentView(binding.root)

        layoutType = intent.getIntExtra(EXTRA_LAYOUT_TYPE, LAYOUT_COUNTER)

        setupViews()
        setupGestureDetectors()
    }

    private fun setupViews() {
        binding.buttonScanBarcode.setOnClickListener {
            startBarcodeScanner()
        }

        binding.buttonConfirm.setOnClickListener {
            confirmAndReturn()
        }

        binding.buttonRotateLeft.setOnClickListener {
            rotateImage(-90f)
        }

        binding.buttonRotateRight.setOnClickListener {
            rotateImage(90f)
        }

        when (layoutType) {
            LAYOUT_COUNTER -> {
                binding.layoutCounterInfo.visibility = View.VISIBLE
                binding.layoutBarcode.visibility = View.GONE
            }
            LAYOUT_BARCODE -> {
                binding.layoutCounterInfo.visibility = View.GONE
                binding.layoutBarcode.visibility = View.VISIBLE
            }
        }
    }

    private fun setupGestureDetectors() {
        scaleGestureDetector = ScaleGestureDetector(this, object : ScaleGestureDetector.SimpleOnScaleGestureListener() {
            override fun onScale(detector: ScaleGestureDetector): Boolean {
                scaleFactor *= detector.scaleFactor
                scaleFactor = scaleFactor.coerceIn(0.1f, 5.0f)
                binding.imageView.scaleX = scaleFactor
                binding.imageView.scaleY = scaleFactor
                return true
            }
        })
    }

    private fun rotateImage(degrees: Float) {
        val bmp = currentBitmap ?: return
        val matrix = Matrix()
        matrix.postRotate(degrees)
        val rotated = Bitmap.createBitmap(bmp, 0, 0, bmp.width, bmp.height, matrix, true)
        currentBitmap = rotated
        binding.imageView.setImageBitmap(rotated)
    }

    private fun startBarcodeScanner() {
        val integrator = IntentIntegrator(this)
        integrator.setDesiredBarcodeFormats(IntentIntegrator.ALL_CODE_TYPES)
        integrator.setPrompt(getString(R.string.scan_barcode_prompt))
        integrator.setCameraId(0)
        integrator.setBeepEnabled(false)
        integrator.initiateScan()
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        val result = IntentIntegrator.parseActivityResult(requestCode, resultCode, data)
        if (result != null) {
            if (result.contents != null) {
                val scannedText = result.contents
                binding.editBarcodeResult.setText(scannedText)
                if (layoutType == LAYOUT_COUNTER) {
                    parseCounterFromBarcode(scannedText)
                }
            }
        } else {
            super.onActivityResult(requestCode, resultCode, data)
        }
    }

    private fun parseCounterFromBarcode(barcode: String) {
        // Try to parse counter info from barcode
        binding.editCounterNumber.setText(barcode)
    }

    private fun confirmAndReturn() {
        val intent = Intent()

        when (layoutType) {
            LAYOUT_COUNTER -> {
                val counterNumber = binding.editCounterNumber.text.toString().trim()
                val volumeStr = binding.editVolume.text.toString().trim()
                val yearStr = binding.editYear.text.toString().trim()
                val dnType = binding.spinnerDnType.selectedItemPosition

                if (counterNumber.isEmpty()) {
                    Toast.makeText(this, getString(R.string.need_counter_number), Toast.LENGTH_SHORT).show()
                    return
                }
                if (yearStr.length != 4) {
                    Toast.makeText(this, getString(R.string.error_year), Toast.LENGTH_SHORT).show()
                    return
                }
                if (volumeStr.length != 5) {
                    Toast.makeText(this, getString(R.string.error_volume_size), Toast.LENGTH_SHORT).show()
                    return
                }

                intent.putExtra(RESULT_COUNTER_NUMBER, counterNumber)
                intent.putExtra(RESULT_VOLUME, volumeStr.toIntOrNull() ?: 0)
                intent.putExtra(RESULT_YEAR, yearStr.toIntOrNull() ?: 0)
                intent.putExtra(RESULT_DN_TYPE, dnType)
            }
            LAYOUT_BARCODE -> {
                intent.putExtra(RESULT_COUNTER_NUMBER, binding.editBarcodeResult.text.toString())
            }
        }

        setResult(RESULT_OK, intent)
        finish()
    }
}
