//
//  MonthModel.swift
//  InfantoryApp
//
//  Created by Karin Lim on 06/04/21.
//

import Foundation

struct Month{
    var id: Int = 0
    var icon: String = ""
    var name: String = ""
    var vaccineList: [String] = []
    var isCompleted: Bool = false
    var isOverdue: Bool = false
    
    static func generateAllMonth() -> [Month]{
        return [
            Month(id: 1, icon:"icon_month_1", name: "First Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 2, icon:"icon_month_2", name: "Second Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 3, icon:"icon_month_3", name: "Third Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 4, icon:"icon_month_4", name: "Forth Month", vaccineList: []),
            Month(id: 5, icon:"icon_month_5", name: "Fifth Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 6, icon:"icon_month_6", name: "Sixth Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 7, icon:"icon_month_7", name: "Seventh Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 8, icon:"icon_month_8", name: "Eighth Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 9, icon:"icon_month_9", name: "Ninth Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 10, icon:"icon_month_10", name: "Tenth Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 11, icon:"icon_month_11", name: "Eleventh Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
            Month(id: 12, icon:"icon_month_12", name: "Twelfth Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"]),
        ]
    }
    
//    static func generateOneMonth(_ moon:Int) -> Month {
//        let months = generateAllMonth()
//        let selectedMonth: Month = Month(id: 12, icon:"icon_month_12", name: "Twelfth Month", vaccineList: ["Vaccine A", "Vaccine B", "Vaccine C", "Vaccine D"])
//        for month in months {
//            if month.id == moon {
//                return month
//            }
//        }
//        return selectedMonth
//    }
}
