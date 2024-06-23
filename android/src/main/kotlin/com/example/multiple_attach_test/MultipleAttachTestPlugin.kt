package com.example.multiple_attach_test

import io.flutter.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** MultipleAttachTestPlugin */
class MultipleAttachTestPlugin : FlutterPlugin, MethodCallHandler {
    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        Log.d("MultipleAttachTestPlugin", "onAttachedToEngine")
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        Log.d("MultipleAttachTestPlugin", "onMethodCall")
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        Log.d("MultipleAttachTestPlugin", "onDetachedFromEngine")
    }
}
