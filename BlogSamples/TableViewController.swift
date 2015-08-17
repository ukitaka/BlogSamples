//
//  TableViewController.swift
//  BlogSamples
//
//  Created by Yuki Takahashi on 2015/08/17.
//  Copyright (c) 2015年 waft. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private let dataSource = SampleCodeDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK -
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.tableView(tableView, numberOfRowsInSection: section)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return dataSource.tableView(tableView, cellForRowAtIndexPath: indexPath)
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        return self.showViewController(dataSource[indexPath.row].viewController, sender: nil)
    }

}

