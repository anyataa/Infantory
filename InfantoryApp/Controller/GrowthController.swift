//
//  GrowthController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit



class GrowthController: UIViewController {

    
    
    @IBOutlet weak var profileImage: UIImageView!
    
//    growthView Manager
    
    @IBOutlet weak var growthIconImage1: UIImageView!
    
    
    @IBOutlet weak var growthIconImage2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setGrowthInfo()
        
    }
    
    @IBOutlet var bgView: UIView!
    @IBOutlet weak var bottomView : UIView!
    @IBOutlet weak var growthTableLabel : UILabel!
    @IBOutlet weak var growthTitle : UINavigationItem!
    
    
    
    func setUI() {
//        profileImage setUp
        growthTitle.title = "Growth"
        
        bgView.backgroundColor = #colorLiteral(red: 0.9443226457, green: 0.948993504, blue: 0.9619088769, alpha: 1)
        
        profileImage.image = UIImage(named: "babyImage")
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = profileImage.bounds.width/2
        
      
        growthIconImage1.image = UIImage(named: "growthEmoji")
    
        growthIconImage2.image = UIImage(named: "graphGrowth")
        
        bottomView.layer.cornerRadius = 10
        
        growthTableLabel.text = "Growth"
        growthTableLabel.textColor = #colorLiteral(red: 0.2934505343, green: 0.5710052252, blue: 0.5805695057, alpha: 1)
        growthTableLabel.font = UIFont.boldSystemFont(ofSize: 27)
        
        
        
    }
    
    @IBOutlet weak var motorikLabel: UILabel!
    @IBOutlet weak var socioLabel: UILabel!
    //    set data for growth info
    let growthData : [growthModel] = growthModel.generateDummy()
    var monthSelected : Int = 0
    
    
    func setGrowthInfo() {
        motorikLabel.text = growthData[monthSelected].motorik
        socioLabel.text = growthData[monthSelected
        ].socio
        
        
        motorikLabel.numberOfLines = 0
        socioLabel.numberOfLines = 0
        
 
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}


extension UIImage{
    var roundedImage: UIImage {
        let rect = CGRect(origin:CGPoint(x: 0, y: 0), size: self.size)
        UIGraphicsBeginImageContextWithOptions(self.size, false, 1)
        UIBezierPath(
            roundedRect: rect,
            cornerRadius: 100
            ).addClip()
        self.draw(in: rect)
        return UIGraphicsGetImageFromCurrentImageContext()!
    }
}



