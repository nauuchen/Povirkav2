package com.poverka.app.ui.common

import android.app.AlertDialog
import android.content.Context
import android.text.Editable
import android.text.TextWatcher
import android.view.LayoutInflater
import android.widget.ArrayAdapter
import android.widget.EditText
import android.widget.ListView
import com.poverka.app.R

/**
 * Searchable spinner dialog that replaces the original SearchableSpinner component.
 * Shows a dialog with a search field and a filterable list.
 */
class SearchableSpinnerDialog(
    private val context: Context,
    private val items: List<String>,
    private val onItemSelected: (Int) -> Unit
) {

    private val adapter: ArrayAdapter<String> by lazy {
        ArrayAdapter(context, android.R.layout.simple_list_item_1, items.toMutableList())
    }

    fun show() {
        val dialogView = LayoutInflater.from(context).inflate(R.layout.dialog_searchable_spinner, null)
        val searchEdit = dialogView.findViewById<EditText>(R.id.editSearch)
        val listView = dialogView.findViewById<ListView>(R.id.listView)

        val filteredItems = items.toMutableList()
        val filteredAdapter = ArrayAdapter(context, android.R.layout.simple_list_item_1, filteredItems)
        listView.adapter = filteredAdapter

        val dialog = AlertDialog.Builder(context)
            .setTitle(R.string.select)
            .setView(dialogView)
            .setNegativeButton(R.string.cancel, null)
            .create()

        searchEdit.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {}
            override fun afterTextChanged(s: Editable?) {
                val query = s?.toString()?.lowercase() ?: ""
                filteredItems.clear()
                filteredItems.addAll(items.filter { it.lowercase().startsWith(query) })
                filteredAdapter.notifyDataSetChanged()
            }
        })

        listView.setOnItemClickListener { _, _, position, _ ->
            val selectedName = filteredItems[position]
            val originalIndex = items.indexOf(selectedName)
            if (originalIndex >= 0) {
                onItemSelected(originalIndex)
            }
            dialog.dismiss()
        }

        dialog.show()
    }
}
