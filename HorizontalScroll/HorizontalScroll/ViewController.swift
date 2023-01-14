//
//  ViewController.swift
//  HorizontalScroll
//
//  Created by 박다미 on 2023/01/14.
//

import UIKit

class ViewController: UIViewController {
    private var dataSource = getSampleImages()
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.collectionView.dataSource = self
        collectionView.register(UINib(nibName: "MyCell", bundle: nil), forCellWithReuseIdentifier: "MyCell")
        

        
    }


}
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! MyCell
        
     
        cell.prepare(image: self.dataSource[indexPath.item])
        return cell
    }
    
}

func getSampleImages() -> [UIImage?] {
  (1...100).map { _ in return UIImage(named: "pingu") }
}

