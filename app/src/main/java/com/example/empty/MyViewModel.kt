package com.example.empty

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.liveData
import androidx.lifecycle.switchMap
import kotlinx.coroutines.Dispatchers

class MyViewModel : ViewModel() {

    private val mutableLiveData = MutableLiveData<String>()
    val liveData: LiveData<String> =
        mutableLiveData.switchMap {
            fetch(it)
        }

    fun test(request: String) {
        mutableLiveData.value = request
    }

    private fun fetch(text: String) = liveData<String>(Dispatchers.IO) {
        emit(text)
    }
}
