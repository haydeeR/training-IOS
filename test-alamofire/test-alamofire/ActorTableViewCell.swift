//
//  ActorTableViewCell.swift
//  
//
//  Created by Haydee Rodriguez on 4/1/18.
//

import UIKit

class ActorTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var spouse: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
