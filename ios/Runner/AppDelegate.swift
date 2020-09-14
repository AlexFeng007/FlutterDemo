import UIKit
import Flutter
import ZegoExpressEngine

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    //注册直播
    ZegoExpressEngine.createEngine(withAppID: 3284426300, appSign: "f8b374a7c679728449050b030c4991f3f5434ae1296a884537836dd8580f61fd", isTestEnv: true, scenario: .general, eventHandler: nil)
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
