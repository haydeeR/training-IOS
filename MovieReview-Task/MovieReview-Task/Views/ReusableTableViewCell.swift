//
//  ReusableTableViewCell.swift
//  MovieReview-Task
//
//  Created by Haydee Rodriguez on 4/3/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit
import AlamofireImage

class ReusableTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var headline: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fullCell(movie: MovieReview) {
        let thumbUrl = URL(string: movie.thumbnailImage)
        thumbnailImage.af_setImage(withURL: thumbUrl!)
        title.text = movie.title
        headline.text = movie.headline
        releaseDate.text = movie.release_date
    }
}
