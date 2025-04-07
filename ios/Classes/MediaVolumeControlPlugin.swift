import Flutter
import UIKit
import AVFoundation

public class MediaVolumeControlPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "media_volume_control", binaryMessenger: registrar.messenger())
    let instance = MediaVolumeControlPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "setMediaVolumeControl" {
      do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)
        result(true)
      } catch {
        result(FlutterError(code: "AUDIO_SESSION_ERROR", message: error.localizedDescription, details: nil))
      }
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}
