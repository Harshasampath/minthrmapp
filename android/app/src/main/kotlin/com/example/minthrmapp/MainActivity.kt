package com.example.minthrmapp
import android.content.Context
import android.view.View
import android.widget.TextView
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.StandardMessageCodec // Correct import added
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.example.app/native"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // MethodChannel example
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getNativeData" -> {
                    val data = getNativeData()
                    result.success(data)
                }
                else -> result.notImplemented()
            }
        }

        // Register a custom native UI view
        flutterEngine.platformViewsController.registry.registerViewFactory(
            "custom-native-view", CustomNativeViewFactory()
        )
    }

    private fun getNativeData(): String {
        return "This is data from Kotlin!"
    }
}

class CustomNativeView(context: Context, creationParams: Map<String, Any>?) : PlatformView {
    private val textView: TextView = TextView(context)

    init {
        textView.text = creationParams?.get("text") as? String ?: "This is a native TextView!"
        textView.textSize = 20f
        textView.setPadding(20, 20, 20, 20)
    }

    override fun getView(): View {
        return textView
    }

    override fun dispose() {}
}

class CustomNativeViewFactory : PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    override fun create(context: Context, id: Int, args: Any?): PlatformView {
        // Pass arguments if needed from Flutter side (e.g., map of data)
        val creationParams = args as? Map<String, Any>
        return CustomNativeView(context, creationParams)
    }
}
