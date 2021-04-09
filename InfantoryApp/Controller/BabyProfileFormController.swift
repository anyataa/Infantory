//
//  BabyProfileFormController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit

class BabyProfileFormController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
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
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.mediaTypes = ["public.image"]
        
        makeImageRound()
    }
    
    func makeImageRound() {
        imageAddChild.layer.masksToBounds = false
        imageAddChild.layer.borderColor = UIColor.black.cgColor
        imageAddChild.layer.cornerRadius = imageAddChild.frame.height/2
        imageAddChild.clipsToBounds = true
    }
    
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
    
//    Add Photo Actions
//    ==================================================================
    
    @IBAction func addPhotoButton(_ sender: Any) {
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let imageSelected = info[.editedImage] as? UIImage else {
            return
        }
        
        imageAddChild.image = imageSelected
        imagePicker.dismiss(animated: true, completion: nil)
    }
}
