import UIKit

/// Global application style
var appStyle: StyleAbstract = Style.default

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if let restoredTheme = Theme.restore() {
            appStyle = Style(theme: restoredTheme)
        }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        appStyle.window.default.apply(to: window)
        
        let rootVC = ViewController()
        let rootNVC = UINavigationController(rootViewController: rootVC)
        
        window?.rootViewController = rootNVC
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) { }

    func applicationDidEnterBackground(_ application: UIApplication) { }

    func applicationWillEnterForeground(_ application: UIApplication) { }

    func applicationDidBecomeActive(_ application: UIApplication) { }

    func applicationWillTerminate(_ application: UIApplication) {
        appStyle.theme.save()
    }
}

