//
//  AppDelegate.swift
//  HelloWideExample
//
//  Created by Wijaya, Ardy on 21/04/22.
//

import UIKit
import HelloWideSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        return JitsiMeet.sharedInstance().application(application, continue: userActivity, restorationHandler: restorationHandler)
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return JitsiMeet.sharedInstance().application(app, open: url, options: options)
    }
}

