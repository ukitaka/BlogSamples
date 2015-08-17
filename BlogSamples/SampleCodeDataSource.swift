//
//  SampleCodeDataSource.swift
//  BlogSamples
//
//  Created by Yuki Takahashi on 2015/08/17.
//  Copyright (c) 2015年 waft. All rights reserved.
//

import UIKit

class SampleCodeDataSource : NSObject {
    
    private let samples : [Sample] = [
        Sample("CAReplicatorLayer Sample", "CAReplicatorLayerSample"),
    ]
    
    
}

extension SampleCodeDataSource {
    
    subscript(index: Int) -> Sample {
        return samples[index]
    }
    
}

extension SampleCodeDataSource : UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return samples.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let sample = samples[indexPath.row]
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: sample.identifier)
        cell.textLabel?.text = sample.title
        return cell
    }
    
}