//
//  DetailViewController.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController {

	var presenter: DetailPresenter!

	override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension DetailViewController: DetailViewProtocol {
    
    func handleOutput(_ output:  DetailPresenterOutput) {
        switch output {
        }
    }
}
