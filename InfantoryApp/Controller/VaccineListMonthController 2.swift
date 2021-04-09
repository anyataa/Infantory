//
//  VaccineListMonthController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit

class VaccineListMonthController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var collectionView: UICollectionView!
    
    let month: Month = Month.generateOneMonth()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = month.name
        
        collectionView.register(VaccineMonthCell.nib(), forCellWithReuseIdentifier: "VaccineMonthCell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        
        // Do any additional setup after loading the view.
    }
    
<<<<<<< HEAD
    //TES

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
=======
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        print("TAPPED!")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return month.vaccineList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VaccineMonthCell", for: indexPath) as! VaccineMonthCell
        
        let currVaccine = month.vaccineList[indexPath.row]
        
        cell.setName(with: currVaccine)
        cell.layer.cornerRadius = 8.0
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 360, height: 70)
>>>>>>> Gilbert_ListVaccineMonth
    }
}
