//
//  ListTableViewCell.swift
//  ViperDemo
//
//  Created by salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import UIKit
import Kingfisher

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setView(imageURL: String, title: String, subtitle: String ){
        titleLabel.text = title
        subtitleLabel.text = subtitle
        cellImageView.kf.setImage(with: URL(string: imageURL))
    }

}
