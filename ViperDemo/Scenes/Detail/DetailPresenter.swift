//
//  DetailPresenter.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

class DetailPresenter {
    
    var view: trackDetailViewProtocol?
    private let media: Media

    init(view: trackDetailViewProtocol, media: Media) {
        self.view = view
        self.media = media
    }
    
}

extension DetailPresenter: DetailPresenterProtocol {
    func load() {
        view?.update(media)
    }
}
