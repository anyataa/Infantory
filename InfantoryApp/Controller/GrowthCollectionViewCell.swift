//
//  GrowthCollectionViewCell.swift
//  InfantoryApp
//
//  Created by Anya Akbar on 08/04/21.
//

import UIKit

class GrowthCollectionViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var monthLabel : UILabel!
    @IBOutlet weak var monthConstantLabel : UILabel!

    
    
    func configGrowthCell( with selectedMonth : Int) {
        monthLabel.text = "\(selectedMonth)"
        monthLabel.font = UIFont.boldSystemFont(ofSize: 17)
        monthLabel.textColor = UIColor.primary
        
        
        monthConstantLabel.textColor = UIColor.primary
        monthConstantLabel.text = "Month"
        
    }
    
  
    
    
}
