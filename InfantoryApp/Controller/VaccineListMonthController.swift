//
//  VaccineListMonthController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit

class VaccineListMonthController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var segmentedControl: UISegmentedControl!

    var currMonthPassed: Int = 0
    var allVaccineMonth: [Vaccine] = []
    var trueVaccine: [Vaccine] = []
    var falseVaccine: [Vaccine] = []
    
    var usedArray: [Vaccine] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.selectedSegmentIndex = 0
        
        initData()
        
        self.title = allVaccineMonth[0].moonName
        
        initCollectionView()
    }
    
    //    IBAction Function
    //    ============================================================================
    
    @IBAction func sortVaccine(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            usedArray = falseVaccine
        } else {
            usedArray = trueVaccine
        }
        collectionView.reloadData()
    }
    
    //    Initialize Page
    //    ============================================================================
    
    func initData() {
        allVaccineMonth = Vaccine.sortVaccine(currMonthPassed)
        
        
        for vaccine in allVaccineMonth {
            if vaccine.isTrue == true {
                trueVaccine.append(vaccine)
            } else {
                falseVaccine.append(vaccine)
            }
        }
        usedArray = falseVaccine
    }
    
    func initCollectionView() {
        collectionView.register(VaccineMonthCell.nib(), forCellWithReuseIdentifier: "VaccineMonthCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
//    Collection View Function
//    ============================================================================
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        self.performSegue(withIdentifier: "VaccineDetailSegue", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return usedArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VaccineMonthCell", for: indexPath) as! VaccineMonthCell
        
        let currVaccine = usedArray[indexPath.row]
        
        cell.setName(with: currVaccine.name)
        cell.layer.cornerRadius = 8.0
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 360, height: 70)
    }
}
