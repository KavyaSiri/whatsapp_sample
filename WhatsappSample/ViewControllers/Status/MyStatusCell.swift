//
//  MyStatusCell.swift
//  WhatsappSample
//
//  Created by Goutham Mac Mini on 28/04/20.
//  Copyright © 2020 Mac Mini. All rights reserved.
//

import UIKit

class MyStatusCell: UITableViewCell {
    
    @IBOutlet weak var MyStatusImge: UIImageView!
    @IBOutlet weak var lbelMyStatus: UILabel!
    @IBOutlet weak var lbelStatusdescription: UILabel!
    @IBOutlet weak var imgWrite: UIImageView!
    @IBOutlet weak var imgCamera: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
