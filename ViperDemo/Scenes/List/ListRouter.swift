//
//  ListRouter.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

final class ListRouter {
    
    var view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
}

extension ListRouter: ListRouterProtocol {
    func navigate(_ route: ListRoutes) {
        switch route {
        case .list(let searchModel):
            let listView = DetailBuilder.make(media: searchModel)
            view.show(listView, sender: nil)
        }
    }
}
