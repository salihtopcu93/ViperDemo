//
//  DetailPresenter.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

class DetailPresenter {
    
    unowned var view: MovieDetailViewProtocol?
    private let media: Media

    init(view: MovieDetailViewProtocol, media: Media) {
        self.view = view
       self.media = media
    }
    
}

extension DetailPresenter: DetailPresenterProtocol {
    func load() {
        view?.update(media)
    }
}
