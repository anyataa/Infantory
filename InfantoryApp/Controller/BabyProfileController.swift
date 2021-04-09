//
//  BabyProfileController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit

class BabyProfileController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var colView: UICollectionView!

    @IBAction func tapToAddBaby() {
        self.performSegue(withIdentifier: "BabyProfileFormSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initColView()
    }
    
//    Initialize Page
//    ============================================================================
    
    func initColView() {
        colView.register(BabyProfileCell.nib(), forCellWithReuseIdentifier: "BabyProfileCell")
        colView.delegate = self
        colView.dataSource = self
    }
    
//    Collection View Function
//    ============================================================================
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        self.performSegue(withIdentifier: "BabyProfileFormSegue", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BabyProfileCell", for: indexPath) as! BabyProfileCell
        
        cell.setName(with: "Didud")
        cell.layer.cornerRadius = 10.0
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 354, height: 175)
    }
}
