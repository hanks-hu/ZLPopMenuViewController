//
//  ViewController.swift
//  ZLPopMenuViewControllerDemo
//
//  Created by 胡智林 on 2018/12/17.
//  Copyright © 2018 胡智林. All rights reserved.
//

import UIKit
import ZLPopMenuViewController
class ViewController: UIViewController {
    let datas: [ZLPopMenuModel] = [.init(itemName: "首页", imageName: nil),
                                   .init(itemName: "首页", imageName: "Heart"),
                                   .init(itemName: "首页", imageName: nil)]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func test1Action(_ sender: UIBarButtonItem) {
        let popVC = ZLPopMenuViewController.init(sourceView: sender, menuData: datas)
        present(popVC, animated: true, completion: nil)
    }
    
    @IBAction func test1VCAction(_ sender: UIButton) {
        let vc1 = ViewController11.init()
        navigationController?.pushViewController(vc1, animated: true)
    }
    
    
}
