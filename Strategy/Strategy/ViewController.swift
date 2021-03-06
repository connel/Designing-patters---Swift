//
//  ViewController.swift
//  Strategy
//
//  Created by Jageen shukla on 12/11/15.
//  Copyright © 2015 Red. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var objList:SortList!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Initialize sort list object and add dummy data
        objList = SortList()
        objList.list.addObject(5);
        objList.list.addObject(2);
        objList.list.addObject(1);
        objList.list.addObject(5);
        objList.list.addObject(2);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func performSort(sender: AnyObject) {
        
        // Set strategy as quick sort
        objList.setSortStrategy(quickSort())
        
        // uncomment below line to set strategy as bouble sort
        // objList.setSortStrategy(boubleSort())
        objList.sort()
    }
}

