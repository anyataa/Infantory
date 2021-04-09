//
//  VaccineModel.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 08/04/21.
//

import Foundation

struct Vaccine {
    private(set) var moonId: Int
    private(set) var moonName: String
    private(set) var name: String
    private(set) var icon: String
    private(set) var isTrue: Bool
    
    static func generateVaccine() -> [Vaccine] {
        return [
            Vaccine(moonId: 1, moonName: "First Month", name: "Tetanus", icon: "iconTetanus", isTrue: true),
            Vaccine(moonId: 1, moonName: "First Month", name: "Polio", icon: "iconPolio", isTrue: false),
            Vaccine(moonId: 1, moonName: "First Month", name: "DPT", icon: "iconDPT", isTrue: true),
            Vaccine(moonId: 1, moonName: "First Month", name: "Campak", icon: "iconCampak", isTrue: false),
            Vaccine(moonId: 1, moonName: "First Month", name: "Hepatitis B", icon: "iconHepatitisB", isTrue: true),
            Vaccine(moonId: 2, moonName: "Second Month", name: "Hepatitis A", icon: "iconHepatitisA", isTrue: true),
        ]
    }
    
    static func sortVaccine(_ moonId: Int) -> [Vaccine] {
        let vaccines = generateVaccine()
        
        var sendVaccines: [Vaccine] = []
        
        for selectedVaccines in vaccines {
            
            if selectedVaccines.moonId == moonId {
                sendVaccines.append(selectedVaccines)
            }
        }
        return sendVaccines
    }
}
