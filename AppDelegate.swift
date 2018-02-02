import UIKit
import CloudrailSI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //Get your free license key: https://cloudrail.com/signup
    
    static let kCloudRailAPIKey = "5a7412dd325f226137e49ade"
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        CRCloudRail.setAppKey(AppDelegate.kCloudRailAPIKey)
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 226.0/255.0, green: 122.0/255.0, blue: 63.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        
        if (sourceApplication == "com.apple.SafariViewService") {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "kCloseSafariViewControllerNotification"), object: url)
            return true
        }
        return true
    }

}

