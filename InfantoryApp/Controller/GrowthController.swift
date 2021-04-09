//
//  GrowthController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit



class GrowthController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    var monthSelected : Int = 0
    
    @IBOutlet weak var growthCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return growthModel.generateDummy().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let growthCell = collectionView.dequeueReusableCell(withReuseIdentifier: "growthCell", for: indexPath) as! GrowthCollectionViewCell
        
        growthCell.configGrowthCell(with: (indexPath.row+1) )
        growthCell.backgroundColor = UIColor.primary
        growthCell.layer.cornerRadius = growthCell.bounds.width/2
        return growthCell
    }
    
    
    @IBOutlet weak var profileImage: UIImageView!
    
//    growthView Manager
    
    @IBOutlet weak var growthIconImage1: UIImageView!
    
    @IBOutlet weak var growthIconImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setGrowthInfo()
        
        growthCollectionView.dataSource = self
        growthCollectionView.delegate = self
        
    }
    
    @IBOutlet weak var growthScrollView: UIScrollView!
    @IBOutlet var bgView: UIView!
    @IBOutlet weak var bottomView : UIView!
    @IBOutlet weak var growthTableLabel : UILabel!
    @IBOutlet weak var growthTitle : UINavigationItem!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 80, height: 80)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print(indexPath.row)
        self.monthSelected = indexPath.row
        print("click: \(self.monthSelected)")
        self.setGrowthInfo()
        
    }
    
    
    
    func setUI() {
//        profileImage setUp
        growthTitle.title = "Growth"
        
        growthScrollView.backgroundColor = UIColor.systemGray6
        
        bgView.backgroundColor = UIColor.systemGray6
        
        profileImage.image = UIImage(named: "babyProfile")
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = profileImage.bounds.width/2
        
      
        growthIconImage1.image = UIImage(named: "growthEmoji")
    
        growthIconImage2.image = UIImage(named: "graphGrowth")
        
        bottomView.layer.cornerRadius = 20
        bottomView.backgroundColor = UIColor.white
        growthTableLabel.text = "Growth"
        growthTableLabel.textColor = #colorLiteral(red: 0.2934505343, green: 0.5710052252, blue: 0.5805695057, alpha: 1)
        growthTableLabel.font = UIFont.boldSystemFont(ofSize: 27)
        
        if let layout = growthCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
    }
    
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    //    set data for growth info
    let growthData : [growthModel] = growthModel.generateDummy()
    
    
    
    func setGrowthInfo() {
        introLabel.text = growthData[monthSelected].intro
        descriptionLabel.text = growthData[monthSelected
        ].description
        
        introLabel.numberOfLines = 0
        introLabel.font = UIFont(name: "Arial", size: 17)
        
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont(name: "Arial", size: 17)
        descriptionLabel.sizeToFit()
        
    }
}



