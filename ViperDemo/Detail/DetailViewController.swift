//
//  DetailViewController.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController, MovieDetailViewProtocol {
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailSubtitle: UILabel!
    
	var presenter: DetailPresenter!
    var result: Media!

	override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load()
    }
    
    func update(_ presentation: Media) {
        detailImageView.kf.setImage(with: URL(string: presentation.artworkUrl100 ?? ""))
        detailTitle.text = presentation.artistName
        detailSubtitle.text = presentation.trackName
    }


}
