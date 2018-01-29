//
//  VegasTrip_ViewController.swift
//  EnTest
//
//  Created by Jennifer Luong on 12/7/17.
//  Copyright © 2017 Cheat Codes. All rights reserved.
//

import UIKit

class VegasTrip_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    

    let list = ["Alexander Berthon", "Anthony Navarro", "Dania Wareh", "Jennifer Luong"]
    
    @IBOutlet weak var membersListTableView: UITableView!
    
    public func tableView (_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return list.count
    }

    public func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "MemberCell")
        cell.textLabel?.text = list[indexPath.row]

        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.membersListTableView.delegate = self
        self.membersListTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
