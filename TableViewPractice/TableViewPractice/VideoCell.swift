//
//  VideoCell.swift
//  TableViewPractice
//
//  Created by macbook on 17/02/22.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var VideoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video:Video){
        VideoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
