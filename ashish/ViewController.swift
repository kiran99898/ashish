//
//  ViewController.swift
//  ashish
//
//  Created by Planetinnovative on 9/13/18.
//  Copyright © 2018 plan. All rights reserved.
//

import UIKit
import Alamofire
import Toast

let url = "http://api.yeahviva.com/Events/getEventListingForWheel.json"
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var event = [eventslists]()
    var newutils = utils()
    

    override func viewDidLoad() {
        super.viewDidLoad()
       fetchDataFromApi()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func fetchDataFromApi() {
        
        let paragm: [String:Any] = ["token":"i3rq9jj9f2wy42bxldknnzr7o77pyzfi87yx0gjm"]
        
        Alamofire.request(url, method: .post, parameters: paragm,encoding: JSONEncoding.default)
            .responseJSON { response in
                
                self.view.makeToast("successfully recorded.")
                let data = response.result.value as! NSDictionary
                let dataoutput = data["output"] as! NSDictionary
                self.view.makeToast(dataoutput["message"] as! String)
                
                if let DataResponse = dataoutput["response"] as? [NSDictionary] {
                    for event in DataResponse{
                        
                        self.event.append(eventslists(json:event))
                    
                    }
                    
                      self.tableView.reloadData()
                }
              
                

    }
}

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return event.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTVC", for: indexPath) as! DemoTableViewCell
        cell.lblName.text = event[indexPath.row].event
        cell.lblName.text = event[indexPath.row].event
        newutils.get_image(event[indexPath.row].mainimage!, cell.MyImage)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "EventDetailTableVC") as! EventDetailTableViewController
        vc.event = event[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
 
}
