//
//  CAReplicatorLayerSampleViewController.swift
//  BlogSamples
//
//  Created by Yuki Takahashi on 2015/08/17.
//  Copyright (c) 2015年 waft. All rights reserved.
//

import UIKit

class CAReplicatorLayerSampleViewController: UIViewController {
    
    static func stripeAnimationLayer(bounds: CGRect) -> CALayer {
        let barWidth : CGFloat = 12.0
        
        let replicator = CAReplicatorLayer()
        replicator.backgroundColor = UIColor.clearColor().CGColor
        replicator.bounds = bounds
        replicator.instanceCount = 40
        replicator.instanceTransform = CATransform3DMakeTranslation(16.0 + barWidth, 0, 0)
        
        let stripe = CALayer()
        stripe.bounds = CGRectMake(0, 0, barWidth, bounds.height * 2)
        stripe.backgroundColor = UIColor.lightGrayColor().CGColor
        stripe.position = CGPoint(x: barWidth / 2, y: bounds.height / 2)
        stripe.transform = CATransform3DMakeRotation(CGFloat(M_PI / 4), 0, 0, 1)
        replicator.addSublayer(stripe)
        
        let animation = CABasicAnimation(keyPath: "position.x")
        animation.toValue = stripe.position.x - (4.0 + barWidth)
        animation.duration = 0.5
        animation.speed = 1
        animation.repeatCount = Float.infinity
        stripe.addAnimation(animation, forKey: nil)
        
        replicator.masksToBounds = true
        
        return replicator
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layer = CAReplicatorLayerSampleViewController.stripeAnimationLayer(CGRectMake(0, 0, self.view.frame.width, 50))
        layer.position = self.view.center
        self.view.layer.addSublayer(layer)
    }
    
    
}
