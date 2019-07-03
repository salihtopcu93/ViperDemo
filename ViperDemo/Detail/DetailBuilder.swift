//
//  DetailBuilder.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import UIKit

class DetailBuilder {
    
    static func make() -> DetailViewController {
        let storyBoard = UIStoryboard(name: "Detail", bundle: nil)
        let view: DetailViewController = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        let interactor = DetailInteractor()
        let router = DetailRouter(viewController: view)
        let presenter = DetailPresenter(view: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        
        return view
    }
}
