//
//  AppRouter.swift
//  ViperDemo
//
//  Created by salih topcu on 3.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import UIKit

final class AppRouter {
    let window: UIWindow
    
    init() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    func start() {
        let viewController = ListBuilder.make()
        let navigationController = BaseNavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
