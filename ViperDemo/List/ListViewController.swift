//
//  ListViewController.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

class ListViewController: UIViewController {

	var presenter: ListPresenter!

	override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ListViewController: ListViewProtocol {
    
    func handleOutput(_ output:  ListPresenterOutput) {
        switch output {
        }
    }
}
