//
//  DatabaseTest_ViewController.swift
//  EnTest
//
//  Created by Jennifer Luong on 12/6/17.
//  Copyright © 2017 Cheat Codes. All rights reserved.
//

import UIKit

class DatabaseTest_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, HomeModelProtocol  {
    
    //Properties
    
    var feedItems: NSArray = NSArray()
    //    var selectedLocation : LocationModel = LocationModel()
    var selectedUser : UserModel = UserModel()
    
    @IBOutlet weak var listTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set delegates and initialize homeModel
        
        self.listTableView.delegate = self
        self.listTableView.dataSource = self
        
        let homeModel = HomeModel()
        homeModel.delegate = self
        homeModel.downloadItems()
        
    }
    
    func itemsDownloaded(items: NSArray) {
        
        feedItems = items
        self.listTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of feed items
        return feedItems.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Retrieve cell
        let cellIdentifier: String = "BasicCell"
        let myCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
        // Get the location to be shown
        //        let item: LocationModel = feedItems[indexPath.row] as! LocationModel
        let item: UserModel = feedItems[indexPath.row] as! UserModel
        // Get references to labels of cell
        myCell.textLabel!.text = item.username
        
        return myCell
    }
    
}

