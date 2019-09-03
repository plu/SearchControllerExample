//
//  AppDelegate.swift
//  SearchControllerExample
//
//  Created by Plunien, Johannes on 03.09.19.
//  Copyright © 2019 eBay Kleinanzeigen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()
        return true
    }

}
