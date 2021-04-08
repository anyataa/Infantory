//
//  VaccineMonthCell.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 07/04/21.
//

import UIKit

class VaccineMonthCell: UICollectionViewCell {
    
    @IBOutlet weak var vaccineIcon: UIImageView!
    @IBOutlet weak var vaccineName: UILabel!
    @IBOutlet weak var vaccineDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setIcon(with icon: UIImage) {
        vaccineIcon.image = icon
    }
    
    public func setName(with name: String) {
        vaccineName.text = name
    }
    
    public func setDate(with date: String) {
        vaccineDate.text = date
    }

    static func nib() -> UINib {
        return UINib(nibName: "VaccineMonthCell", bundle: nil)
    }
}
