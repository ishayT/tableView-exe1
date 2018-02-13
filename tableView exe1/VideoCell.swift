//
//  VideoCell.swift
//  tableView exe1
//
//  Created by Ishay on 2/13/18.
//  Copyright © 2018 Ishay. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    
    func setVideo (video: Video) {
        
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
        
    }
    
    
}
