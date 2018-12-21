//
//  UIImage+Category..swift
//  ZLPopMenuViewControllerDemo
//
//  Created by 胡智林 on 2018/12/21.
//  Copyright © 2018 胡智林. All rights reserved.
//

import UIKit
extension UIImage {
    ///
    ///重新绘制图片
    ///
    /// - Parameter color: 填充色
    /// - Returns: 新的图片
    func imageWith(Color color: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        let context = UIGraphicsGetCurrentContext()
        context?.translateBy(x: 0, y: size.height)
        context?.scaleBy(x: 1, y: -1)
        context?.setBlendMode(.normal)
        let rect = CGRect.init(origin: .zero, size: size)
        context?.clip(to: rect, mask: cgImage!)
        color.setFill()
        context?.fill(rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}
