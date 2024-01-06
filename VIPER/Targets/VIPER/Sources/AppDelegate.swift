import UIKit
import VIPERKit
import VIPERUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let userRouter = UserRouter.start()
        
        window?.rootViewController = userRouter.entry
        window?.makeKeyAndVisible()
        VIPERKit.hello()
        VIPERUI.hello()
 
        return true
    }

}
