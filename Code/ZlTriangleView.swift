//
//  ZlTriangleView.swift
//  ZLPopMenu
//
//  Created by 胡智林 on 2018/12/14.
//  Copyright © 2018 胡智林. All rights reserved.
//

import UIKit

public class ZlTriangleView: UIView {
    ///箭头的朝向
    enum Direction: Int {
        ///箭头向上
        case up
        ///箭头向下
        case down
    }
    var direction = Direction.down
    
    override func draw(_ rect: CGRect) {
        
        let bezierPath = UIBezierPath.init()
        bezierPath.move(to: .init(x: 0, y: rect.height))
        bezierPath.addLine(to: .init(x: rect.width/2.0, y: 0))
        bezierPath.addLine(to: .init(x: rect.width, y: rect.height))
        bezierPath.addLine(to: .init(x: 0, y: rect.height))
        
        bezierPath.close()
        
        let shapeLayer = CAShapeLayer.init()
        shapeLayer.path = bezierPath.cgPath
        layer.mask = shapeLayer
    }
}
