//
//  DetailContracts.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import Foundation

// MARK: Presenter
protocol DetailPresenterProtocol: class {

}

enum DetailPresenterOutput {
    
}

// MARK: Interactor -
protocol DetailInteractorProtocol: class {

 var delegate: DetailInteractorDelegate? { get set }
}

protocol DetailInteractorDelegate: class {
    func handleOutput(_ output: DetailInteractorOutput)
}

enum DetailInteractorOutput {
    
}

// MARK: View
protocol DetailViewProtocol: class {
    func handleOutput(_ output: DetailPresenterOutput)
}

// MARK: Router

enum DetailRoutes {
    
}

protocol DetailRouterProtocol: class {
    func navigate(_ route: DetailRoutes)
}
