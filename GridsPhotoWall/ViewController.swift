//
//  ViewController.swift
//  GridsPhotoWall
//
//  Created by Chang Sophia on 4/15/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
 
    var photoArray: [String] = ["AntMan", "BlackPanther", "BlackWidow", "CaptainAmerican","CaptainMarvel", "Drax", "DrStranger","Gamora", "Hawkeye","Hulk","IronMan","Loki","Mantis","NickFury","Okoye","Pepper","Rocket","ScarletWitch","Thor","Valkyrie", "WinterSoldier", "Wong","Groot","Wasp"]
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ViewCollectionViewCell
        
       cell.imageView.image = UIImage(named: photoArray[indexPath.row])
        
        return cell
    }
    
      var fullScreenSize: CGSize!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullScreenSize = UIScreen.main.bounds.size
        
        // 建立 UICollectionViewFlowLayout
        let layout = UICollectionViewFlowLayout()
        
        // 設置 section 的間距 四個數值分別代表 上、左、下、右 的間距
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5);
        
        // 設置每一行的間距
        layout.minimumLineSpacing = 5
        
        // 設置每個 cell 的尺寸
        layout.itemSize = CGSize(
            width: CGFloat(fullScreenSize.width)/2 - 10.0, height: CGFloat(fullScreenSize.width)/2 - 10.0)
        
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 10, width: fullScreenSize.width, height: fullScreenSize.height), collectionViewLayout: layout)
       
        collectionView.register(ViewCollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        
        collectionView.backgroundColor = UIColor.white
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.view.addSubview(collectionView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         collectionImage = UIImage(named: photoArray[indexPath.row])
     
        performSegue(withIdentifier: "ScrollViewSegue", sender: nil)
       
    }
    
    @IBAction func unwindToMultipleChoicePage(segue: UIStoryboardSegue){
        collectionImage = nil
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let controller = segue.destination as? ScrollViewViewController
        controller?.scrollViewImage = collectionImage
        
        
    }
    
    
}

