//
//   ZLPopMenuConfig.swift
//  ZLPopMenu
//
//  Created by 胡智林 on 2018/12/14.
//  Copyright © 2018 胡智林. All rights reserved.
//

import Foundation
import UIKit

public class ZLPopMenuModel: NSObject, Codable {
    @objc public var itemName: String?
    @objc public var imageName: String?
    public static func == (lhs: ZLPopMenuModel, rhs: ZLPopMenuModel) -> Bool {
        return lhs.itemName == rhs.itemName
    }
    @objc public init(itemName: String? = nil, imageName: String? = nil) {
        super.init()
        self.itemName = itemName
        self.imageName = imageName
    }
}

///把一些配置放到这里
public class ZLPopMenuConfig: NSObject {
    /// 距离两边最小距离
    @objc public var margin: CGFloat = 8
    /// 三角形的高
    @objc public var triangleH: CGFloat = 10.0
    /// 三角形的宽
    @objc public var triangleW: CGFloat = 10.0*2.0/sqrt(3.0)
    /// 圆角半径, 四个角的圆角
    @objc public var radius: CGFloat = 5
    ///菜单项最大值，超过这个值，就可以上下滑动
    @objc public var defaultMaxValue = 6
    ///tableview的宽
    @objc public var tableViewW: CGFloat = 120
    ///tableViewcell的 高
    @objc public var cellH: CGFloat = 40.0
    ///默认值
    @objc public static let `default` = ZLPopMenuConfig()

    @objc public init(margin: CGFloat = 8,
                      triangleH: CGFloat = 10,
                      triangleW: CGFloat = 10.0*2.0/sqrt(3.0),
                      radius: CGFloat = 5,
                      defaultMaxValue: Int = 6,
                      tableViewW: CGFloat = 120,
                      cellH: CGFloat = 40) {
        super.init()
        self.margin = margin
        self.triangleH = triangleH
        self.triangleW = triangleW
        self.radius = radius
        self.defaultMaxValue = defaultMaxValue
        self.tableViewW = tableViewW
        self.cellH = cellH
    }
}
