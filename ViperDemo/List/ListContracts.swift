//
//  ListContracts.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import Foundation

// MARK: Presenter
protocol ListPresenterProtocol: class {
    func load()
    func selectMovie(at index: Int)
}

enum ListPresenterOutput {
    case setLoading(Bool)
    case getMediaList(medias: Search)
}

// MARK: Interactor -
protocol ListInteractorProtocol: class {

 var delegate: ListInteractorDelegate? { get set }
    func load()
    func selectMovie(at index: Int)
    func showMovieDetail()
    

}

protocol ListInteractorDelegate: class {
    func handleOutput(_ output: ListInteractorOutput)
}

enum ListInteractorOutput {
    case setLoading(Bool)
    case getMediaList(Search)
    case showMovieDetail(Media)
    

}

// MARK: View
protocol ListViewProtocol: class {
    func handleOutput(_ output: ListPresenterOutput)
}

// MARK: Router

enum ListRoutes {
    case list(Media)
}

protocol ListRouterProtocol: class {
    func navigate(_ route: ListRoutes)
}
