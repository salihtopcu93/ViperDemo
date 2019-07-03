//
//  ListPresenter.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

final class ListPresenter {
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
    func selecttrack(at index: Int) {
        interactor.selecttrack(at: index)
    }
    
    func load() {
        interactor.load()
    }
}


extension ListPresenter: ListInteractorDelegate {
    func handleOutput(_ output: ListInteractorOutput) {
        switch output {
        case .setLoading(let isLoading):
            view?.handleOutput(.setLoading(isLoading))
        case .getMediaList(let medias):
            view?.handleOutput(.getMediaList(medias: medias))
        case .showtrackDetail(let track):
            router.navigate(.list(track))
        }
    }
}

