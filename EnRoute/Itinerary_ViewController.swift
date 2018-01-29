//
//  Itinerary_ViewController.swift
//  EnTest
//
//  Created by Jennifer Luong on 12/9/17.
//  Copyright © 2017 Cheat Codes. All rights reserved.
//

import UIKit

class Itinerary_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var ItineraryTableView: UITableView!
    
    let timeList = ["2:00", "3:30", "5:00", "6:00"]
    let ampmList = ["PM", "PM", "PM", "PM"]
    let eventList = ["Flight", "Hotel Check-In", "Day Club", "More club"]
    let descriptionList = ["testfdgsdfgsdfgfds \n fdgsd", "test2", "test3", "test4"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventList.count
    }
    
    public func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItineraryCell", for: indexPath) as! ItineraryTableViewCell
        
        cell.StartTime.text = timeList[indexPath.row]
        cell.ampm.text = ampmList[indexPath.row]
        cell.Event.text = eventList[indexPath.row]
        cell.Descript.text = descriptionList[indexPath.row]
        
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ItineraryTableView.delegate = self
        self.ItineraryTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

        
        
}
