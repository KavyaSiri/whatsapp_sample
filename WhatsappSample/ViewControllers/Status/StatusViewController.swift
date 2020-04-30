//
//  StatusViewController.swift
//  WhatsappSample
//
//  Created by Goutham Mac Mini on 28/04/20.
//  Copyright © 2020 Mac Mini. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController {

    @IBOutlet var ViewHeader: UIView!
    
    let statusArray : [[String : String]] = [ ["statusimg":"img1.jpg","statusname":"Kavya"] , ["statusimg":"img2","statusname":"Subbu"], ["statusimg":"img3","statusname":"subbu"], ["statusimg":"img4","statusname":"Goutham"], ["statusimg":"img5","statusname":"Sai"], ["statusimg":"img1","statusname":"Kavya"],["statusimg":"img2","statusname":"Kavya"],["statusimg":"img3","statusname":"Kavya"],["statusimg":"img4","statusname":"Kavya"],["statusimg":"img5","statusname":"Kavya"],["statusimg":"img1","statusname":"Kavya"],["statusimg":"img2","statusname":"Kavya"],["statusimg":"img3","statusname":"Kavya"],["statusimg":"img4","statusname":"Kavya"]
        
    ]
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        // Do any addsitional setup after loading the view.
    }
    

   

}

extension StatusViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1{
            return 50
            
        }
        else {
            
            return 0
            
        }
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1{
            
            return ViewHeader
        }
        else {
            
            return nil
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 80
            
            
        }
        
        return 60
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
            
        }
        else{
            
            return statusArray.count

        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
          
                
                let statusVar = tableView.dequeueReusableCell(withIdentifier: "MyStatusCellID", for: indexPath) as! MyStatusCell
                return statusVar
                
            
        }
        else {
            let otherStatusVar = tableView.dequeueReusableCell(withIdentifier: "OtherStatusCellID", for: indexPath) as! OtherStatusCell
            
            let variable = statusArray[indexPath.row]
            
            let peoplenme = variable["statusname"]
            let imgofStatus = variable["statusimg"]
            otherStatusVar.imgOthersStatus.image = UIImage(named: imgofStatus!)
            otherStatusVar.peopleProfileNme.text = peoplenme
            
            return otherStatusVar
        }
        
        
        
        }
    
    
    
    
    
    
    
    
}
