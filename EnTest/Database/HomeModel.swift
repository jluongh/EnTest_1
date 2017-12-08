//
//  HomeModel.swift
//  EnTest
//
//  Created by Jennifer Luong on 12/7/17.
//  Copyright © 2017 Cheat Codes. All rights reserved.
//

import UIKit


protocol HomeModelProtocol: class {
    func itemsDownloaded(items: NSArray)
}

class HomeModel: NSObject {
    
    //properties
    
    weak var delegate: HomeModelProtocol!
    
    let urlPath = "http://localhost/xampp/user.php" //this will be changed to the path where service.php lives
    
    
    func downloadItems() {
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url) { (data, response, error) in
            
            if error != nil {
                print("Failed to download data")
            } else {
                print("Data downloaded")
                self.parseJSON(data!)
            }
            
        }
        
        task.resume()
    }
    
    func parseJSON(_ data:Data) {
        
        var jsonResult = NSArray()
        
        do{
            jsonResult = try JSONSerialization.jsonObject(with: data, options:JSONSerialization.ReadingOptions.allowFragments) as! NSArray
            
        } catch let error as NSError {
            print("parseJSON: ", error)
            
        }
        
        var jsonElement = NSDictionary()
        let users = NSMutableArray()
        
        for i in 0 ..< jsonResult.count {
            
            jsonElement = jsonResult[i] as! NSDictionary
            
            let user = UserModel()
            
            
            //the following insures none of the JsonElement values are nil through optional binding
            if let username = jsonElement["Username"] as? String,
                let password = jsonElement["Password"] as? String,
                let firstName = jsonElement["FirstName"] as? String,
                let lastName = jsonElement["LastName"] as? String,
                let email = jsonElement["Email"] as? String
            {
                print("does this work")
                
                user.username = username
                user.password = password
                user.firstName = firstName
                user.lastName = lastName
                user.email = email
                
            }
            
            users.add(user)
            
        }
        
        DispatchQueue.main.async(execute: { () -> Void in
            self.delegate.itemsDownloaded(items: users)
            
        })
    }
    
}


