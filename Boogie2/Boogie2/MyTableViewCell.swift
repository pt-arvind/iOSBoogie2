//
//  MyTableViewCell.swift
//  Boogie2
//
//  Created by christian johnson on 10/11/15.
//  Copyright © 2015 iOSBoogie. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {


    @IBOutlet weak var imageObject: UIImageView!
    @IBOutlet weak var labelObject: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
