//
//   ZLPopMenuConfig.swift
//  ZLPopMenu
//
//  Created by 胡智林 on 2018/12/14.
//  Copyright © 2018 胡智林. All rights reserved.
//

import Foundation
import UIKit
public struct ZLPopMenuModel: Codable, Equatable {
    var itemName: String?
    var imageName: String?
    
    public static func == (lhs: ZLPopMenuModel, rhs: ZLPopMenuModel) -> Bool {
        
        return lhs.itemName == rhs.itemName
    }
}

///把一些配置放到这里
public struct ZLPopMenuConfig {
    /// 距离两边最小距离
    let margin: CGFloat = 8
    /// 三角形的高
    let triangleH: CGFloat = 10.0
    /// 三角形的宽
    let triangleW: CGFloat = 10.0*2.0/sqrt(3.0)
    /// 圆角半径
    let radius: CGFloat = 5
    ///菜单项最大值
    let defaultMaxValue = 6
    ///tableview的宽
    let tableViewW: CGFloat = 120
    ///tableViewcell的 高
    let cellH: CGFloat = 40.0
    
    ///默认值
    static let `default` = ZLPopMenuConfig()

    
    
}
