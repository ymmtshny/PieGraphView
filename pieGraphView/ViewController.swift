//
//  ViewController.swift
//  pieGraphView
//
//  Created by Shinya Yamamoto on 2016/09/06.
//  Copyright © 2016年 Shinya Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let layer1 = getPieLayer(radius:100, end: CGFloat(M_PI), color: UIColor.orangeColor(), center:self.view.center)
        let layer2 = getPieLayer(radius:100, end: CGFloat(M_PI * 2), color: UIColor.grayColor(),center:self.view.center)
        let layer3 = getPieLayer(radius:90,  end: CGFloat(M_PI * 2), color: UIColor.whiteColor(), center:self.view.center)
        
        self.view.layer.addSublayer(layer2)
        self.view.layer.addSublayer(layer1)
        self.view.layer.addSublayer(layer3)
        
    }
    

    func getPieLayer(radius radius: CGFloat, end: CGFloat, color: UIColor, center:CGPoint) -> CAShapeLayer {
        
        let start:CGFloat = CGFloat(M_PI) / -2 // 開始の角度
        let end :CGFloat = end // 終了の角度
        
        let path: UIBezierPath = UIBezierPath();
        path.moveToPoint(center)
        path.addArcWithCenter(center, radius: radius, startAngle: start, endAngle: end, clockwise: true) // 円弧
        
        let layer = CAShapeLayer()
        layer.fillColor = color.CGColor
        layer.path = path.CGPath
        
        return layer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

