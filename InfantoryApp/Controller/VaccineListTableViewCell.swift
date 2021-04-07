//
//  VaccineListTableViewCell.swift
//  InfantoryApp
//
//  Created by Karin Lim on 06/04/21.
//

import UIKit

class VaccineListTableViewCell: UITableViewCell {

    @IBOutlet weak var iconMonth: UIImageView!
    @IBOutlet weak var monthTitle: UILabel!
    @IBOutlet weak var vaccineList: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}
