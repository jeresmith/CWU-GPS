import UIKit
import Flutter
import GoogleMaps
import config.dart
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // TODO: Add your API key
    GMSServices.provideAPIKey(properties['iOSAPIKey'])

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
