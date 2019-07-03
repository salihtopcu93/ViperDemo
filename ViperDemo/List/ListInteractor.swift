//
//  ListInteractor.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit
import Moya

class ListInteractor {

    weak var delegate: ListInteractorDelegate?
    private var movies: Search!
}

extension  ListInteractor:  ListInteractorProtocol {

    func load() {
        delegate?.handleOutput(.setLoading(true))
        
        let pluginsArray:[PluginType] = [NetworkLoggerPlugin(cURL: true)]
        let provider = MoyaProvider<IMDbAPIService>(plugins: pluginsArray)
        
        provider.request(.search) { [weak self] response in
            guard let self = self else { return }
            self.delegate?.handleOutput(.setLoading(false))
            
            switch response {
            case .success(let value):
                let data = value.data
                
                do {
                    let results = try JSONDecoder().decode(Search.self, from: data)
                    self.movies = results
                    self.delegate?.handleOutput(.getMediaList(results))
                } catch let error {
                    print(error)
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func selectMovie(at index: Int) {
        let movie = movies.results[index]
        delegate?.handleOutput(.showMovieDetail(movie))
    }
    
    func showMovieDetail() {
        //
    }
}
