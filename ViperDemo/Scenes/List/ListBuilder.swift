//
//  ListBuilder.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import UIKit

class ListBuilder {
    
    static func make() -> ListViewController {
        let storyBoard = UIStoryboard(name: "List", bundle: nil)
        let view: ListViewController = storyBoard.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        let interactor = ListInteractor()
        let router = ListRouter(view: view)
        let presenter = ListPresenter(view: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        
        return view
    }
}
