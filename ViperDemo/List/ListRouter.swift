//
//  ListRouter.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

class ListRouter {
    unowned var viewController: UIViewController

    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}

extension ListRouter: ListRouterProtocol {
    func navigate(_ route: ListRoutes) {
        switch route {
        }
    }
}
