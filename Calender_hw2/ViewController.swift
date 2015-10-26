//
//  ViewController.swift
//  Calender_hw2
//
//  Created by Sheng-Hua.Lin on 10/9/15.
//  Copyright (c) 2015 Norman.Lin. All rights reserved.
//

import UIKit

var events = [Dictionary<String,String>()];

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if events.count == 1 {
            
            events.removeAtIndex(0)
            
            events.append(["name":"name1", "time":"time1", "location":"location1"]);
            
        }

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            // handle delete (by removing the data from your array and updating the tableview)
            
                events.removeAtIndex(indexPath.row)
                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = events[indexPath.row]["name"]
        cell.detailTextLabel?.text = events[indexPath.row]["time"]
        
        var image = UIImage(named: "icon")
        cell.imageView?.image = image
        
        return cell
        
    }

}

