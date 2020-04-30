//
//  CallsViewController.swift
//  WhatsappSample
//
//  Created by Goutham Mac Mini on 28/04/20.
//  Copyright © 2020 Mac Mini. All rights reserved.
//

import UIKit

class CallsViewController: UIViewController {

    let arrayCalls : [[String : String]] =  [ ["callerimg":"img1","callername":"Kavya" , "callestatus":"outgoing","timendate":"yesterday"],["callerimg":"img3.jpg","callername":"subbu" , "callestatus":"incoming","timendate":"today"],["callerimg":"img5.jpg","callername":"gouthm" , "callestatus":"outgoing","timendate":"yesterday"],["callerimg":"img2.jpg","callername":"siri" , "callestatus":"incoming","timendate":"today"],["callerimg":"img4.jpg","callername":"junnu" , "callestatus":"outgoing","timendate":"yesterday"],["callerimg":"img1","callername":"Kavya" , "callestatus":"outgoing","timendate":"yesterday"],["callerimg":"img3.jpg","callername":"subbu" , "callestatus":"incoming","timendate":"today"],["callerimg":"img5.jpg","callername":"gouthm" , "callestatus":"outgoing","timendate":"yesterday"],["callerimg":"img2.jpg","callername":"siri" , "callestatus":"incoming","timendate":"today"],["callerimg":"img4.jpg","callername":"junnu" , "callestatus":"outgoing","timendate":"yesterday"],["callerimg":"img1","callername":"Kavya" , "callestatus":"outgoing","timendate":"yesterday"],["callerimg":"img3.jpg","callername":"subbu" , "callestatus":"incoming","timendate":"today"],["callerimg":"img5.jpg","callername":"gouthm" , "callestatus":"outgoing","timendate":"yesterday"],["callerimg":"img2.jpg","callername":"siri" , "callestatus":"incoming","timendate":"today"],["callerimg":"img4.jpg","callername":"junnu" , "callestatus":"outgoing","timendate":"yesterday"]
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
extension CallsViewController : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCalls.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let callsVar = tableView.dequeueReusableCell(withIdentifier: "CallsViewCellID", for: indexPath) as! CallsViewCell
        
        let tempvar = arrayCalls[indexPath.row]
        let img = tempvar["callerimg"]
        let callernme = tempvar["callername"]
        let status = tempvar["callestatus"]
        let timenddate = tempvar["timendate"]
        
        
        callsVar.imgCaller.image = UIImage(named: img!)
        callsVar.labelCallerName.text = callernme
        callsVar.labelIncomingOutgoing.text = status
        callsVar.labelTimeOfCall.text = timenddate
        
        
        return callsVar
    }
    
    
    
    
    
    
    
}
