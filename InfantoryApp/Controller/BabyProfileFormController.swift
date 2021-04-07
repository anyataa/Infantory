//
//  BabyProfileFormController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit

class BabyProfileFormController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
// Navigation Bar Outlets
    @IBOutlet weak var addChildNavBar: UINavigationBar!
    @IBOutlet weak var cancelButton: UINavigationItem!
    @IBOutlet weak var doneButton: UINavigationItem!
    
// Add Photo Outlets
    @IBOutlet weak var imageAddChild: UIImageView!
    @IBOutlet weak var addPhotoButton: UIButton!
    
// Table View Outlets
    @IBOutlet weak var tableViewAddChild: UITableView!
    
// Navigation Bar Actions
    @IBAction func cancelButton(_ sender: Any) {
    }
    @IBAction func doneButton(_ sender: Any) {
    }
    
// Add Photo Actions
    @IBAction func addPhotoButton(_ sender: Any) {
    }
    
// Table View Actions
    
}
