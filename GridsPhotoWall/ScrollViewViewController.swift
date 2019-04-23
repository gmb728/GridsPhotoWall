//
//  ScrollViewViewController.swift
//  GridsPhotoWall
//
//  Created by Chang Sophia on 4/15/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class ScrollViewViewController: UIViewController, UIScrollViewDelegate{
    
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myImageView: UIImageView!
    
    var scrollViewImage: UIImage?
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return myImageView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.image = scrollViewImage
        myImageView.contentMode = UIView.ContentMode.scaleAspectFit
        myScrollView.delegate = self

    }
     
}

