import Flutter
import UIKit

public class EasyTransitionPlugin: NSObject, FlutterPlugin {
 public static func register(with registrar: FlutterPluginRegistrar) {
 let channel = FlutterMethodChannel(name: "transition_easy", binaryMessenger: registrar.messenger())
 let instance = EasyTransitionPlugin()
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