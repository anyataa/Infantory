//
//  VaccineListController.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 05/04/21.
//

import UIKit

class VaccineListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let months: [Month] = Month.generateAllMonth()
    var selectedMonth = Month()

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
        cell.iconMonth.image = UIImage(named: currMonth.icon)
        cell.monthTitle.text = currMonth.name
        cell.vaccineList.text = getVaccines(vaccineList: currMonth.vaccineList)
        cell.overdueLabel.text = ""
        //TODO: Create function to get completed & overdue status
        if(indexPath.row == 1){
            cell.overdueLabel.text = "!"
        }
        //TODO: Create function to sync with baby age to get colored icon
//        if(month.isCurrent){
//            cell.iconMonth.tintColor = UIColor.primary
//        }
//        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMonth = months[indexPath.row]
//        let cell = tableView.cellForRow(at: indexPath)
//        cell?.backgroundColor = UIColor.secondary
        self.performSegue(withIdentifier: "VaccineListMonthSegue", sender: self)
        
//        cell?.backgroundColor = UIColor.white
    }
    
//    func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
//        let cell = tableView.cellForRow(at: indexPath)
//        cell?.backgroundColor = UIColor.white
//        return indexPath
//    }
//
//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        let cell = tableView.cellForRow(at: indexPath)
//        cell?.backgroundColor = UIColor.white
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "VaccineListMonthSegue"){
            let destinationVC = segue.destination as? VaccineListMonthController
            destinationVC?.month = selectedMonth
        }
    }
}
