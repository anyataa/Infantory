//
//  BabyCardView.swift
//  InfantoryApp
//
//  Created by Jonathan Clive on 07/04/21.
//

import Foundation
import UIKit

@IBDesignable class BabyCardView : UIView {
    var cornerRadius : CGFloat = 10
    var color = UIColor.systemGray
    
    override func layoutSubviews() {
        layer.cornerRadius = self.cornerRadius
    }
}
