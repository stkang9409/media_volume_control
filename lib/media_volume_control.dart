import 'package:flutter/services.dart';

class MediaVolumeControl {
  static const MethodChannel _channel = MethodChannel('media_volume_control');

  static Future<void> setMediaVolumeControl() async {
    await _channel.invokeMethod('setMediaVolumeControl');
  }
}
