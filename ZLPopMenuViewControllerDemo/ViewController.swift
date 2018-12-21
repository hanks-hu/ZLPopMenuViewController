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
    let datas: [ZLPopMenuModel] = [.init(itemName: "首页（4）"),
                                   .init(itemName: "首页", imageName: "home2"),
                                   .init(itemName: "确认")]
    let datas1: [ZLPopMenuModel] = [.init(itemName: "首页（4）", imageName: nil),
                                   .init(itemName: "首页"),
                                   .init(itemName: "确认", imageName: nil)]
    
    let datas2: [ZLPopMenuModel] = [.init(itemName: "首页（4）", imageName: "icon_button_affirm"),
                                   .init(itemName: "刷新下", imageName: "icon_button_recall"),
                                   .init(itemName: "消息", imageName: "icon_button_record"),
                                   .init(itemName: "首页（4）", imageName: "icon_button_affirm"),
                                   .init(itemName: "刷新", imageName: "icon_button_recall"),
                                   .init(itemName: "消息", imageName: "icon_button_record")]
    override func viewDidLoad() {
        super.viewDidLoad()
        var orX: CGFloat = 0
        var num = 1
        
        while orX < view.frame.width {
            let button = UIButton.init(type: .system)
            button.frame = .init(x: orX, y: 200, width: 50, height: 20)
            button.backgroundColor = UIColor.blue
            button.setTitle("按钮\(num)", for: .normal)
            button.addTarget(self, action: #selector(buttonTap(_:)), for: .touchUpInside)
            view.addSubview(button)
            orX = button.frame.maxX + 5
            num += 1
        }
    }
    @objc func buttonTap(_ sender: UIButton) {
        
        let popVC = ZLPopMenuViewController.init(sourceView: sender, menuData: datas1)
        present(popVC, animated: true, completion: nil)
    }
    @IBAction func item4Action(_ sender: UIBarButtonItem) {
        let popVC = ZLPopMenuViewController.init(sourceView: sender, menuData: datas2, menuStyle: .black)
        popVC.didClickItems = {(index, model)in
            
        }
        present(popVC, animated: true, completion: nil)
    }
    
    @IBAction func playAction(_ sender: UIBarButtonItem) {
        let popVC = ZLPopMenuViewController.init(sourceView: sender, menuData: datas2, menuStyle: .black)
        present(popVC, animated: true, completion: nil)
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
