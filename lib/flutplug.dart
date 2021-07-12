
import 'dart:async';

import 'package:flutter/services.dart';

class Flutplug {
  static const MethodChannel _channel =
      const MethodChannel('flutplug');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
