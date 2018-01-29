//
//  ItineraryTableViewCell.swift
//  EnTest
//
//  Created by Jennifer Luong on 12/9/17.
//  Copyright © 2017 Cheat Codes. All rights reserved.
//

import UIKit

class ItineraryTableViewCell: UITableViewCell {

    @IBOutlet weak var Event: UILabel!
    @IBOutlet weak var StartTime: UILabel!
    @IBOutlet weak var ampm: UILabel!
    @IBOutlet weak var Descript: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
