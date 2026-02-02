package com.example.ocrtextz

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import androidx.core.net.toFile
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.io.FileOutputStream

class MainActivity : FlutterActivity() {
    private val CHANNEL = "channel_shared"
    private var pendingImagePath: String? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine){
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result -> 
                if (call.method == "callGetSharedImage"){
                    result.success(pendingImagePath)
                    pendingImagePath = null
                }else{
                    result.notImplemented()
                }
            }
    }

    override fun onCreate(savedInstanceState: Bundle?){
        super.onCreate(savedInstanceState)
        handleShareIntent(intent)
    }

    override fun onNewIntent(intent: Intent){
        super.onNewIntent(intent)
        handleShareIntent(intent)
    }

    private fun handleShareIntent(intent: Intent){
        if (intent.action == Intent.ACTION_SEND && intent.type?.startsWith("image/") == true){
            val uri = intent.getParcelableExtra<Uri>(Intent.EXTRA_STREAM)
            uri?.let {
                pendingImagePath = copyImageUriToCache(it)
            }
        }
    }
        

    private fun copyImageUriToCache(uri: Uri) : String {
        val inputStream = contentResolver.openInputStream(uri)!!
        val file = File(cacheDir, "imageCache_${System.currentTimeMillis()}.jpg")
        FileOutputStream(file).use { 
            output -> inputStream.copyTo(output)
        }
        return file.absolutePath
    }
}
