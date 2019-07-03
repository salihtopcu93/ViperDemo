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
     func load()
}

protocol MovieDetailViewProtocol: class {
    func update(_ presentation: Media)
}
