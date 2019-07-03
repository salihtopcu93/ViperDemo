//
//  DetailPresenter.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

class DetailPresenter {

    weak private var view: DetailViewProtocol?
    var interactor: DetailInteractorProtocol
    private let router: DetailRouterProtocol

    init(view: DetailViewProtocol, interactor: DetailInteractorProtocol, router: DetailRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
        
        self.interactor.delegate = self
    }

}

extension DetailPresenter: DetailPresenterProtocol {
    
    func navigate(_ route: DetailRoutes) {
        router.navigate(route)
    }
    
}

extension DetailPresenter: DetailInteractorDelegate {
    func handleOutput(_ output: DetailInteractorOutput) {
        switch output {
        }
    }
}

