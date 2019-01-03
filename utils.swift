//
//  utils.swift
//  ashish
//
//  Created by Planetinnovative on 9/17/18.
//  Copyright © 2018 plan. All rights reserved.
//

import Foundation
import UIKit

class utils {
 func get_image(_ url_str:String, _ imageview:UIImageView!){
    
   let url:URL = URL(string: url_str)!
        let session = URLSession.shared
    
    let task = session.dataTask(with: url, completionHandler: {
        (data, response, error) in
            if data != nil
            {
                let image = UIImage(data: data!)
                if (image != nil)
                {
        
                    DispatchQueue.main.async (execute: {
                        imageview.image = image
                        imageview.alpha = 0.6
        
                        UIView.animate(withDuration: 2.5, animations:{
                            imageview.alpha = 1.0
                        })
        
                    })
        
                    }
                }
            })
        task.resume()
       
   }
}


