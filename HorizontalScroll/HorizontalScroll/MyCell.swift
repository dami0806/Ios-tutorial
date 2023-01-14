//
//  MyCell.swift
//  HorizontalScroll
//
//  Created by 박다미 on 2023/01/14.
//

import UIKit

class MyCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
      super.prepareForReuse()
      
      self.prepare(image: nil)
    }
    
    func prepare(image: UIImage?) {
      self.imageView.image = image
    }
}
