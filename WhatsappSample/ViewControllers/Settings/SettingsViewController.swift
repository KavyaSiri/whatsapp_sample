//
//  SettingsViewController.swift
//  WhatsappSample
//
//  Created by Goutham Mac Mini on 28/04/20.
//  Copyright © 2020 Mac Mini. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var headerView: UIView!
    
    
    let dictionarySetting : [String: [[String : String]]] = [ "0" : [["img" : "img2", "profilenme": "kavya",
                                                                  "description" : "Dropomb"]],
                                                          
                                                          
                                                          "1" : [["img" : "img3" , "title" : "starred messages"],
                                                                 ["img" : "img3" , "title" : "Whatsapp Web/Desktop"]],
                                                          
                                                         "2":[["img" : "img3" , "title" : "account"],
                                                              ["img" : "img3" , "title" : "Chats"],
                                                              ["img" : "img3" , "title" : "Notifications"],
                                                              ["img" : "img3" , "title" : "Payments"],
                                                              ["img" : "img3" , "title" : "Data an Storage Usage"]],
                                                         
                                                         "3": [["img" : "img3" , "title" : "Help "],
                                                               ["img" : "img3" , "title" : "Tell a Friend"]],
        
                            ]
    

    override func viewDidLoad() {
        
    
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SettingsViewController : UITableViewDelegate , UITableViewDataSource {
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        if section == 0 {
//            return nil
//        }
//        else if section == 1{
//        return headerView
//        }
//        return headerView
//    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 40
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0
        {
            
    return 100
        }
        return 60
          
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dictionarySetting.keys.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return 1
        }
        else{
            let arrayCount = dictionarySetting["\(section)"]
            
            
                        
            return arrayCount!.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let settingVar = tableView.dequeueReusableCell(withIdentifier: "GeneralSettingCellID", for: indexPath) as! GeneralSettingCell
        
        
        return settingVar
        
        
    }
    
    
    
    
    
}
   
