//
//  GrowthCollectionViewCell.swift
//  InfantoryApp
//
//  Created by Anya Akbar on 08/04/21.
//

import UIKit

class GrowthCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var monthLabel : UILabel!
    
    func configGrowthCell( with selectedMonth : Int) {
        monthLabel.text = "\(selectedMonth)"
    }
}
