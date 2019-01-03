//
//  DemoFiles.swift
//  ashish
//
//  Created by Planetinnovative on 9/17/18.
//  Copyright © 2018 plan. All rights reserved.
//

import Foundation

class eventslists: NSObject {
    var event: String?
    var mainimage: String?
    var eventDescription:String?
    var startDate: String?
    var endDate: String?
    
    
    init(json: NSDictionary) {
        event = json["eventName"] as? String
        mainimage = json["mainImage"] as? String
        eventDescription = json["eventDescription"] as? String
        startDate = json["start_date"] as? String
        endDate = json["end_date"] as? String
    }
    
    override init(){
        
    }
}
