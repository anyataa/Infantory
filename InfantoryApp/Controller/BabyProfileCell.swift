//
//  BabyProfileCell.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 09/04/21.
//

import UIKit

class BabyProfileCell: UICollectionViewCell {
    
    @IBOutlet weak var babyPhoto: UIImageView!
    @IBOutlet weak var babyName: UILabel!
    @IBOutlet weak var babyDOB: UILabel!
    @IBOutlet weak var babyGender: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setName(with name: String) {
        babyName.text = name
    }
    
    public func setDOB(with dob: String) {
        babyDOB.text = dob
    }
    
    public func setGender(with gender: String) {
        babyGender.text = gender
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "BabyProfileCell", bundle: nil)
    }
}
