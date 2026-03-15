package com.poverka.app.ui.image

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Matrix
import android.os.Bundle
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.poverka.app.R
import com.poverka.app.databinding.ActivityImageBinding

class ImageActivity : AppCompatActivity() {

    private lateinit var binding: ActivityImageBinding
    private var scaleFactor = 1.0f
    private var lastX = 0f
    private var lastY = 0f
    private var translateX = 0f
    private var translateY = 0f
    private var rotationAngle = 0f
    private lateinit var scaleDetector: ScaleGestureDetector
    private var bitmap: Bitmap? = null

    companion object {
        const val EXTRA_IMAGE_DATA = "image_data"
        const val EXTRA_IMAGE_TITLE = "image_title"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityImageBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setSupportActionBar(binding.toolbar)
        val title = intent.getStringExtra(EXTRA_IMAGE_TITLE) ?: getString(R.string.image_view_name)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            this.title = title
        }

        val imageData = intent.getByteArrayExtra(EXTRA_IMAGE_DATA)
        if (imageData != null) {
            bitmap = BitmapFactory.decodeByteArray(imageData, 0, imageData.size)
            binding.imageView.setImageBitmap(bitmap)
        } else {
            Toast.makeText(this, R.string.error_page_inserter, Toast.LENGTH_SHORT).show()
        }

        setupGestures()
        setupButtons()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    private fun setupButtons() {
        binding.buttonRotateLeft.setOnClickListener {
            rotationAngle -= 90f
            applyTransformation()
        }
        binding.buttonRotateRight.setOnClickListener {
            rotationAngle += 90f
            applyTransformation()
        }
        binding.buttonResetTransform.setOnClickListener {
            scaleFactor = 1.0f
            translateX = 0f
            translateY = 0f
            rotationAngle = 0f
            applyTransformation()
        }
        binding.buttonSave.setOnClickListener {
            Toast.makeText(this, R.string.image_button_save, Toast.LENGTH_SHORT).show()
        }
    }

    private fun setupGestures() {
        scaleDetector = ScaleGestureDetector(this, object : ScaleGestureDetector.SimpleOnScaleGestureListener() {
            override fun onScale(detector: ScaleGestureDetector): Boolean {
                scaleFactor *= detector.scaleFactor
                scaleFactor = scaleFactor.coerceIn(0.1f, 10.0f)
                applyTransformation()
                return true
            }
        })

        binding.imageView.setOnTouchListener { _, event ->
            scaleDetector.onTouchEvent(event)
            when (event.action) {
                MotionEvent.ACTION_DOWN -> {
                    lastX = event.x
                    lastY = event.y
                    true
                }
                MotionEvent.ACTION_MOVE -> {
                    if (!scaleDetector.isInProgress) {
                        translateX += event.x - lastX
                        translateY += event.y - lastY
                        applyTransformation()
                    }
                    lastX = event.x
                    lastY = event.y
                    true
                }
                else -> false
            }
        }
    }

    private fun applyTransformation() {
        val matrix = Matrix().apply {
            postScale(scaleFactor, scaleFactor, binding.imageView.width / 2f, binding.imageView.height / 2f)
            postRotate(rotationAngle, binding.imageView.width / 2f, binding.imageView.height / 2f)
            postTranslate(translateX, translateY)
        }
        binding.imageView.imageMatrix = matrix
        binding.imageView.scaleType = android.widget.ImageView.ScaleType.MATRIX
    }
}
