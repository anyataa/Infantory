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
    
// Add Photo Outlets
    @IBOutlet weak var imageAddChild: UIImageView!
    @IBOutlet weak var addPhotoButton: UIButton!
    
// Label Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
// Text Field Outlets
    @IBOutlet weak var addBabyName: UITextField!
    
// Text Field Actions
    @IBAction func addBabyName(_ sender: Any) {
    }
    
    @IBAction func birthdayField(_ sender: Any) {
    }
    @IBAction func genderPicker(_ sender: Any) {
    }
    
// Navigation Bar Actions
    @IBAction func cancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func doneButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
// Add Photo Actions
    @IBAction func addPhotoButton(_ sender: Any) {
        }
}
