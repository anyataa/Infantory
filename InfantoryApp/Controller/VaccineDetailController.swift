//
//  VaccineDetailController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit

class VaccineDetailController: UIViewController {

    @IBOutlet weak var dateField: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateField.text = "mm/dd/yy"
        createDatePicker()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CloseModal(_ sender: Any) {
         self.dismiss(animated: true, completion: nil)
    } 
    
    func createDatePicker() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        
        toolbar.setItems([doneBtn], animated: true)
        
        dateField.inputAccessoryView = toolbar
        
        dateField.inputView = datePicker
        
        datePicker.datePickerMode = .date
        
        datePicker.preferredDatePickerStyle = .wheels
        
    }
    
    @objc func donePressed() {
        let formatter = DateFormatter()
//        formatter.dateStyle = .medium
        formatter.dateFormat = "MM/dd/yy"
//        formatter.timeStyle = .none
        
        dateField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
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
