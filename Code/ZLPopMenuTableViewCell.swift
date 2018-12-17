//
//  ZLPopMenuTableViewCell.swift
//  ZLPopMenu
//
//  Created by 胡智林 on 2018/12/14.
//  Copyright © 2018 胡智林. All rights reserved.
//

import UIKit




class ZLPopMenuTableViewCell: UITableViewCell {
    
    
    
    public var cellModel: ZLPopMenuModel? {
        didSet {
           textLabel?.text = cellModel?.itemName
            if let imgName = cellModel?.imageName {
                imageView?.image = UIImage.init(named: imgName)
            } else {
                imageView?.image = nil
            }
        }
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        textLabel?.font = .systemFont(ofSize: 14)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
