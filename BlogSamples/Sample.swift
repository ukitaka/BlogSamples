//
//  Sample.swift
//  BlogSamples
//
//  Created by Yuki Takahashi on 2015/08/17.
//  Copyright (c) 2015年 waft. All rights reserved.
//

import UIKit

struct Sample {
    let title: String
    let identifier: String
    
    init(_ title: String, _ identifier: String) {
        self.title = title
        self.identifier = identifier
    }
    
    var viewController : UIViewController {
        return UIStoryboard(name: identifier, bundle: nil).instantiateInitialViewController() as! UIViewController
    }
}