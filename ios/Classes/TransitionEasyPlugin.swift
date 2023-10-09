import Flutter
import UIKit

public class TransitionEasyPlugin: NSObject, FlutterPlugin {
 public static func register(with registrar: FlutterPluginRegistrar) {
 let channel = FlutterMethodChannel(name: "transition_easy", binaryMessenger: registrar.messenger())
 let instance = TransitionEasyPlugin()
 registrar.addMethodCallDelegate(instance, channel: channel)
 }

 public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
 switch call.method {
 case "getPlatformVersion":
 result("iOS " + UIDevice.current.systemVersion)
 default:
 result(FlutterMethodNotImplemented)
 }
 }
}
