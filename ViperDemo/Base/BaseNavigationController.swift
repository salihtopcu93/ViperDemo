//
//  BaseNavigationController.swift
//  ViperDemo
//
//  Created by salih topcu on 3.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        navigationBar.barTintColor = UIColor(red: 242/255, green: 197/255, blue: 0, alpha: 1)
        navigationBar.tintColor = .black
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        navigationBar.titleTextAttributes = textAttributes
    }
    
}


