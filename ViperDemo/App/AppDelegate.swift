//
//  AppDelegate.swift
//  ViperDemo
//
//  Created by salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        app.router.start()
        
        return true
    }
    
}
