import Flutter
import UIKit
import sampleFramework

public class SwiftFlutplugPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutplug", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutplugPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
    
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
     let arithmeticModule = BasicArithmetic();
    let x = arithmeticModule.Add(x: 1, y: 1)
    result("iOS \(x) " + UIDevice.current.systemVersion)
  }
}
