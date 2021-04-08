//
//  VaccineListController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit

class VaccineListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let months: [Month] = Month.generateAllMonth()
    let previousIndex = -1

    @IBOutlet weak var vaccineListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        vaccineListTableView.dataSource = self
        vaccineListTableView.delegate  = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return months.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "vaccineListTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! VaccineListTableViewCell
        let currMonth = months[indexPath.row]
//        cell.iconMonth.image = UIImage(named: currMonth.icon)
        cell.monthTitle.text = currMonth.name
        cell.vaccineList.text = getVaccines(vaccineList: currMonth.vaccineList)
        cell.overdueLabel.text = "!"
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        return cell
    }
    
    func getVaccines(vaccineList: [String]) -> String{
        var vaccines: String = ""
        if(vaccineList.count <= 0){
            return "No Vaccine"
        }
        for vaccine in vaccineList {
            if vaccines == "" {
                vaccines = vaccine
            }
            vaccines = vaccines + ", " + vaccine
        }
        return vaccines
    }
    
    @IBAction func tap() {
        self.performSegue(withIdentifier: "VaccineListMonthSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vaccMonth = segue.destination as? VaccineListMonthController {
            vaccMonth.currMonthPassed = 1
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    */

}
