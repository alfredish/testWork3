//
//  TableViewCell.swift
//  testWork3
//
//  Created by кирилл корнющенков on 15/11/2019.
//  Copyright © 2019 кирилл корнющенков. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
