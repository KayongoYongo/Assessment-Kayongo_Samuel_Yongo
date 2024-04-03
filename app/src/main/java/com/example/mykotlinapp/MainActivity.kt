package com.example.mykotlinapp

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.google.gson.Gson
import com.google.gson.annotations.SerializedName
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import okhttp3.OkHttpClient
import okhttp3.Request
import java.io.IOException

data class Customer(
    val id: String,
    @SerializedName("first_name") val firstName: String,
    @SerializedName("last_name") val lastName: String,
    val email: String,
    val age: Int,
    @SerializedName("created_at") val createdAt: String,
    @SerializedName("updated_at") val updatedAt: String
)

class MainActivity : AppCompatActivity() {

    private lateinit var textView: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        textView = findViewById(R.id.textView)
        val buttonFetchData: Button = findViewById(R.id.buttonFetchData)

        buttonFetchData.setOnClickListener {
            fetchData()
        }
    }

    private fun fetchData() {
        GlobalScope.launch(Dispatchers.IO) {
            val client = OkHttpClient()
            val request = Request.Builder()
                .url("http://10.0.2.2:5000/api/v1/customers")
                // "http://127.0.0.1:5000/api/v1/customers"
                // "http://10.0.2.2:5000/api/v1/customers"
                .build()

            try {
                val response = client.newCall(request).execute()
                if (!response.isSuccessful) {
                    throw IOException("Unexpected code $response")
                }

                val responseBody = response.body?.string()
                val customers = Gson().fromJson(responseBody, Array<Customer>::class.java)

                val customerInfo = StringBuilder()
                for (customer in customers) {
                    customerInfo.append("Name: ${customer.firstName} ${customer.lastName}\n")
                    customerInfo.append("Email: ${customer.email}\n")
                    customerInfo.append("Age: ${customer.age}\n\n")
                }

                launch(Dispatchers.Main) {
                    textView.text = customerInfo.toString()
                }
            } catch (e: IOException) {
                e.printStackTrace()
            }
        }
    }
}