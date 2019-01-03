//
//  testTableViewCell.swift
//  ashish
//
//  Created by Planetinnovative on 9/26/18.
//  Copyright © 2018 plan. All rights reserved.
//

import UIKit

class testTableViewCell: UITableViewCell {
    

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lbldescription: UILabel!
    @IBOutlet weak var lblstart: UILabel!
    @IBOutlet weak var lblend: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
