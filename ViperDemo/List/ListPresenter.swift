//
//  ListPresenter.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

class ListPresenter {

    weak private var view: ListViewProtocol?
    var interactor: ListInteractorProtocol
    private let router: ListRouterProtocol

    init(view: ListViewProtocol, interactor: ListInteractorProtocol, router: ListRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
        
        self.interactor.delegate = self
    }

}

extension ListPresenter: ListPresenterProtocol {
    
    func navigate(_ route: ListRoutes) {
        router.navigate(route)
    }
    
}

extension ListPresenter: ListInteractorDelegate {
    func handleOutput(_ output: ListInteractorOutput) {
        switch output {
        }
    }
}

