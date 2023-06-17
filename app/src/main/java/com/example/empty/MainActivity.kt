package com.example.empty

import android.app.Activity
import android.os.Bundle
import com.example.library.LibViewModel

class MainActivity : Activity() {

    lateinit var viewModel: LibViewModel
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

    }
}