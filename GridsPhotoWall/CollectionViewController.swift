//
//  CollectionViewController.swift
//  GridsPhotoWall
//
//  Created by Chang Sophia on 4/2/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"



class CollectionViewController: UICollectionViewController{
    
     var collectionImage: UIImage?
    
   var photoArray: [String] = ["AntMan", "BlackPanther", "BlackWidow", "CaptainAmerican","CaptainMarvel", "Drax", "DrStranger","Gamora", "Hawkeye","Hulk","IronMan","Loki","Mantis","NickFury","Okoye","Pepper","Rocket","ScarletWitch","Thor","Valkyrie", "WinterSoldier", "Wong","Groot","Wasp"]
    
    let fullScreenSize = UIScreen.main.bounds.size

    @IBOutlet weak var CollectionViewFlowLayout: UICollectionViewFlowLayout!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let layout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        let width = (view.bounds.width - 10) / 2
        layout?.itemSize = CGSize(width: width, height: width + 10)
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photoArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as!  PhotoCollectionViewCell
        
           cell.imageView.image = UIImage(named: photoArray[indexPath.row])
        
    
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let item = collectionView.indexPathsForSelectedItems?.first?.item {
            let controller = segue.destination as? PhotoScrollViewViewController
            controller?.scrollViewImage = UIImage(named: photoArray[item])
            
        }
    }
    
    @IBAction func unwindToMultipleChoicePage(segue: UIStoryboardSegue){
        collectionImage = nil
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
  
    
}


