//
//  CallsViewCell.swift
//  WhatsappSample
//
//  Created by Goutham Mac Mini on 29/04/20.
//  Copyright © 2020 Mac Mini. All rights reserved.
//

import UIKit

class CallsViewCell: UITableViewCell {

    @IBOutlet weak var labelIncomingOutgoing: UILabel!
    @IBOutlet weak var labelCallerName: UILabel!
    @IBOutlet weak var imgCaller: UIImageView!
        @IBOutlet weak var labelTimeOfCall: UILabel!
    
            override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

    
    
    
    
    

