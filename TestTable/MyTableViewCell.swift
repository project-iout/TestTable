//
//  MyTableViewCell.swift
//  TestTable
//
//  Created by WengChihao on 13/10/2017.
//  Copyright © 2017 WengChihao. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var test: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var txt: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
