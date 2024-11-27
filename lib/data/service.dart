import 'package:flutter/services.dart';

class NativeCommunicator {
  static const platform = MethodChannel('com.example.app/native');

  // Call a native function
   static Future<String> getNativeData() async {
    try {
      final String result = await platform.invokeMethod('getNativeData');
      return result;
    } on PlatformException catch (e) {
      return "Failed to get native data: ${e.message}";
    }
  }
}
