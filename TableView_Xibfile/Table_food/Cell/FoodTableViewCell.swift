//
//  FoodTableViewCell.swift
//  Table_food
//
//  Created by 박다미 on 2023/01/13.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
