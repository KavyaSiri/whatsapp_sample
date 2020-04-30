//
//  GeneralSettingCell.swift
//  WhatsappSample
//
//  Created by Goutham Mac Mini on 29/04/20.
//  Copyright © 2020 Mac Mini. All rights reserved.
//

import UIKit

class GeneralSettingCell: UITableViewCell {

    @IBOutlet weak var imgsetting: UIImageView!
    @IBOutlet weak var lbelSettingsNme: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
