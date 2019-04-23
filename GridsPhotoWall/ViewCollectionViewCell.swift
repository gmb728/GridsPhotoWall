//
//  ViewCollectionViewCell.swift
//  GridsPhotoWall
//
//  Created by Chang Sophia on 4/12/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class ViewCollectionViewCell: UICollectionViewCell {
    
   var imageView: UIImageView!
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // 取得螢幕寬度
        let w = Double(UIScreen.main.bounds.size.width)
        
        // 建立一個 UIImageView
        imageView = UIImageView(frame: CGRect(
            x: 0, y: 0,
            width: w/2 - 10.0 , height: w/2 - 10.0))
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        self.addSubview(imageView)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
    
    

    

