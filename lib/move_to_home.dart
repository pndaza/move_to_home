import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class MoveToHome {
  MoveToHome._();
  static const MethodChannel _channel = MethodChannel('move_to_home');

  static Future<void> moveToHome() async {
    try {
      final result = await _channel.invokeMethod('moveToHome');
      debugPrint(result.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
