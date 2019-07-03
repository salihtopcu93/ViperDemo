//
//  DetailBuilder.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import UIKit

class DetailBuilder {
    
    static func make(media: Media) -> DetailViewController {
        let storyBoard = UIStoryboard(name: "Detail", bundle: nil)
        let view = storyBoard.instantiateViewController(withIdentifier: "detailVC") as! DetailViewController
        let presenter = DetailPresenter(view: view as MovieDetailViewProtocol, media: media)
        
        view.presenter = presenter
        
        return view
    }
}
