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

}

enum ListPresenterOutput {
    
}

// MARK: Interactor -
protocol ListInteractorProtocol: class {

 var delegate: ListInteractorDelegate? { get set }
}

protocol ListInteractorDelegate: class {
    func handleOutput(_ output: ListInteractorOutput)
}

enum ListInteractorOutput {
    
}

// MARK: View
protocol ListViewProtocol: class {
    func handleOutput(_ output: ListPresenterOutput)
}

// MARK: Router

enum ListRoutes {
    
}

protocol ListRouterProtocol: class {
    func navigate(_ route: ListRoutes)
}
