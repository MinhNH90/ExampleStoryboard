//
//  PetTableViewCell.swift
//  ExampleStoryboard
//
//  Created by Nguyen Huu Minh on 2/6/18.
//  Copyright © 2018 Steadfast. All rights reserved.
//

import UIKit

class PetTableViewCell: UITableViewCell {
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    var pet: Pet! {
        didSet {
            labelName.text = pet.name
            labelTitle.text = pet.title
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
