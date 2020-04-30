//
//  ChatsViewController.swift
//  WhatsappSample
//
//  Created by Goutham Mac Mini on 28/04/20.
//  Copyright © 2020 Mac Mini. All rights reserved.
//

import UIKit

class ChatsViewController: UIViewController {
    
    let arrayChats : [[String : String]] =  [
        
        ["callerimg":"img1","callername":"Kavya" , "callerdescription":"you were right","time":"10:00 PM"],
        ["callerimg":"img2","callername":"siri" , "callerdescription":"jhonny jhonny yes pappa eating sugar no pappa  telling lies no papp","time":"10:00 PM"],
        ["callerimg":"img3","callername":"sharma" , "callerdescription":"Hi how you","time":"11:00 PM"],
        ["callerimg":"img4","callername":"junnu" , "callerdescription":"Hi how re you","time":"12:00 PM"],
        ["callerimg":"img5","callername":"sai" , "callerdescription":"Hi how re you","time":"08:00 PM"],
        ["callerimg":"img4","callername":"Rramru" , "callerdescription":"Hi how re you","time":"07:00 PM"],
        ["callerimg":"img1","callername":"idly" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img2","callername":"goutham" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img3","callername":"dad" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img4","callername":"mom" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img5","callername":"Kavya" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img6","callername":"Kavya" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img3","callername":"Kavya" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img4","callername":"Kavya" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img5","callername":"Kavya" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img2","callername":"Kavya" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img4","callername":"Kavya" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img5","callername":"Kavya" , "callerdescription":"Hi how re you","time":"10:00 PM"],
        ["callerimg":"img3","callername":"Kavya" , "callerdescription":"Hi how re you","time":"10:00 PM"],
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
}

extension ChatsViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayChats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chatVar = tableView.dequeueReusableCell(withIdentifier: "ChatsCellID", for: indexPath) as! ChatsCell
        
        
        let tempvar = arrayChats[indexPath.row]
        let img = tempvar["callerimg"]
        let callernme = tempvar["callername"]
        let textcht = tempvar["callerdescription"]
        let time = tempvar["time"]
        
        
        chatVar.imgChat.image = UIImage(named: img!)
        chatVar.lbelChatName.text = callernme
        chatVar.lbelChatDescription.text = textcht
        chatVar.lbelTime.text = time
        
        return chatVar
    }
    
    
    
}
