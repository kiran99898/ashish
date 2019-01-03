//
//  EventDetailTableViewController.swift
//  ashish
//
//  Created by Planetinnovative on 9/21/18.
//  Copyright © 2018 plan. All rights reserved.
//

import UIKit

class EventDetailTableViewController: UITableViewController {

    var event = eventslists()
    var newUtils = utils()
    
    
    @IBOutlet weak var myImage: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.tableFooterView = UIView()
        setData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setData() {
        newUtils.get_image(event.mainimage!, myImage)
        
    }
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 1
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "myreuseidentifier", for: indexPath) as! testTableViewCell
        cell.lblTitle.text = event.event!
        cell.lbldescription.text = event.eventDescription
       cell.lblstart.text = event.startDate
        cell.lblend.text = event.endDate
        return cell
    }

}
