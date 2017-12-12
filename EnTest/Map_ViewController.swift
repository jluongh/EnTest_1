//
//  Map_ViewController.swift
//  EnTest
//
//  Created by Jennifer Luong on 12/12/17.
//  Copyright © 2017 Cheat Codes. All rights reserved.
//

import UIKit

class Map_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let list = ["Las Vegas Strip", "Bellagio", "Red Rock Canyon National Park", "MGM Grand Las Vegas Hotel"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier:
        "MapCell")
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    

    @IBOutlet weak var MapTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.MapTableView.delegate = self
        self.MapTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
