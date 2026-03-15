package com.poverka.app.ui.client

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.poverka.app.PoverkaApp
import com.poverka.app.R
import com.poverka.app.data.model.Address
import com.poverka.app.data.model.CounterVerification
import com.poverka.app.data.repository.AddressRepository
import com.poverka.app.databinding.ActivityClientBinding
import com.poverka.app.ui.common.SearchableSpinnerDialog
import com.poverka.app.ui.main.MainActivity
import com.poverka.app.ui.measurement.MeasurementActivity
import kotlinx.coroutines.launch

class ClientActivity : AppCompatActivity() {

    private lateinit var binding: ActivityClientBinding
    private lateinit var addressRepository: AddressRepository

    private var streets: List<Address> = emptyList()
    private var selectedStreet: Address? = null
    private var cv: CounterVerification? = null
    private var ip: String = ""

    companion object {
        const val EXTRA_CV = "counter_verification"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityClientBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setSupportActionBar(binding.toolbar)
        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.client)
        }

        cv = intent.getParcelableExtra(EXTRA_CV)
        ip = intent.getStringExtra(MainActivity.EXTRA_IP) ?: PoverkaApp.instance.preferences.deviceIp

        addressRepository = AddressRepository(this)
        streets = addressRepository.loadCachedStreets()

        setupViews()
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }

    private fun setupViews() {
        // Service type spinner (cold water / hot water)
        val serviceTypes = arrayOf(
            getString(R.string.for_cold_water),
            getString(R.string.for_hot_water)
        )
        val adapter = ArrayAdapter(this, android.R.layout.simple_spinner_item, serviceTypes).apply {
            setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        }
        binding.spinnerServiceType.adapter = adapter
        binding.spinnerServiceType.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>?, view: View?, position: Int, id: Long) {
                cv?.serviceType = position
            }
            override fun onNothingSelected(parent: AdapterView<*>?) {}
        }

        binding.buttonSelectStreet.setOnClickListener { showStreetPicker() }
        binding.buttonFillClient.setOnClickListener { fillClientFromTask() }
        binding.buttonClearClient.setOnClickListener { clearClient() }
        binding.buttonStartMeasurement.setOnClickListener { onStartMeasurementClicked() }
        binding.buttonShowQr.setOnClickListener { showQrCode() }

        // Pre-fill personal account
        cv?.personalAccount?.let { binding.editPersonalAccount.setText(it) }
    }

    private fun showStreetPicker() {
        if (streets.isEmpty()) {
            Toast.makeText(this, R.string.load_streets_first, Toast.LENGTH_SHORT).show()
            return
        }
        SearchableSpinnerDialog(this, streets.map { it.name }) { index ->
            selectedStreet = streets[index]
            binding.buttonSelectStreet.text = selectedStreet?.name
        }.show()
    }

    private fun fillClientFromTask() {
        // Auto-fill client data from task if available
        Toast.makeText(this, R.string.fill_client, Toast.LENGTH_SHORT).show()
    }

    private fun clearClient() {
        binding.editSurname.text?.clear()
        binding.editBuilding.text?.clear()
        binding.editBuildingBukva.text?.clear()
        binding.editBuildingKorpus.text?.clear()
        binding.editApartment.text?.clear()
        binding.editApartmentBukva.text?.clear()
        binding.editPhoneMain.text?.clear()
        binding.editPhoneDop.text?.clear()
        binding.editPhoneDop2.text?.clear()
        binding.editEmail.text?.clear()
        binding.editNote.text?.clear()
        binding.editPaymentAccount.text?.clear()
        binding.editSealNumber.text?.clear()
    }

    private fun showQrCode() {
        // Show QR code for personal account verification
        val personalAccount = binding.editPersonalAccount.text?.toString() ?: ""
        if (personalAccount.isEmpty()) {
            Toast.makeText(this, R.string.client_personal_account, Toast.LENGTH_SHORT).show()
            return
        }
        // TODO: show QR dialog
    }

    private fun onStartMeasurementClicked() {
        // Validate required fields
        val building = binding.editBuilding.text?.toString()?.trim() ?: ""
        if (building.isNotEmpty() && building.toIntOrNull() == null) {
            Toast.makeText(this, R.string.error_building_has_to_be_number, Toast.LENGTH_SHORT).show()
            return
        }
        val apartment = binding.editApartment.text?.toString()?.trim() ?: ""
        if (apartment.isNotEmpty() && apartment.toIntOrNull() == null) {
            Toast.makeText(this, R.string.error_apartment_has_to_be_number, Toast.LENGTH_SHORT).show()
            return
        }
        val paymentStr = binding.editPaymentAccount.text?.toString()?.trim() ?: ""
        if (paymentStr.isNotEmpty()) {
            val payment = paymentStr.toIntOrNull()
            if (payment == null) {
                Toast.makeText(this, R.string.has_to_be_number, Toast.LENGTH_SHORT).show()
                return
            }
            if (paymentStr.length != 5) {
                Toast.makeText(this, R.string.has_to_be_5_digit, Toast.LENGTH_SHORT).show()
                return
            }
            if (payment < 1 || payment > 99999) {
                Toast.makeText(this, R.string.has_to_be_00001_99999, Toast.LENGTH_SHORT).show()
                return
            }
            cv?.paymentAccount = payment
        }

        cv?.let { counterVer ->
            // Set additional client fields
            counterVer.personalAccount = binding.editPersonalAccount.text?.toString()?.trim() ?: ""
            selectedStreet?.let { counterVer.local = it.id }

            val intent = Intent(this, MeasurementActivity::class.java).apply {
                putExtra(MeasurementActivity.EXTRA_CV, counterVer)
                putExtra(MainActivity.EXTRA_IP, ip)
            }
            startActivity(intent)
        } ?: run {
            Toast.makeText(this, R.string.error_counter_info, Toast.LENGTH_SHORT).show()
        }
    }
}
