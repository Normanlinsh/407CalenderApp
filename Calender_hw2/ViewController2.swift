//
//  ViewController2.swift
//  Calender_hw2
//
//  Created by Sheng-Hua.Lin on 10/13/15.
//  Copyright (c) 2015 Norman.Lin. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var eventName: UITextField!
    
    @IBOutlet weak var eventTime: UITextField!
    
    @IBOutlet weak var donee: UIButton!
    
    @IBAction func doneee(sender: AnyObject) {
        events.append(["name":eventName.text, "time":eventTime.text, ]);
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
