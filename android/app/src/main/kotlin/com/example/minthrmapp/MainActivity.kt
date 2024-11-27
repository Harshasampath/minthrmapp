package com.example.minthrmapp

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.example.app/native"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getNativeData" -> {
                    val data = getNativeData() 
                    result.success(data)
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun getNativeData(): String {
        return "This is data from Kotlin!"
    }
}