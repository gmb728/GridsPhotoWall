//
//  PhotoScrollViewViewController.swift
//  GridsPhotoWall
//
//  Created by Chang Sophia on 4/16/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class PhotoScrollViewViewController: UIViewController, UIScrollViewDelegate{
    
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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


