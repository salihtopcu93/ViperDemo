//
//  ListViewController.swift
//  ViperDemo
//
//  Created salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//


import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var presenter: ListPresenter!
    var medias: Search?
    
	override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load()
    }

}

extension ListViewController: ListViewProtocol {
    
    func handleOutput(_ output:  ListPresenterOutput) {
        switch output {
        case .setLoading(let isLoading):
            UIApplication.shared.isNetworkActivityIndicatorVisible = isLoading
        case .getMediaList(let searchResults):
            self.medias = searchResults
            tableView.reloadData()
        }
    }
    
    
}

extension ListViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medias?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ListTableViewCell
        cell.configure(with: (medias?.results[indexPath.row])!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false)
        presenter.selectMovie(at: indexPath.row)
       
        
   }
}
