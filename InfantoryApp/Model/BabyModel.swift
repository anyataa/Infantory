//
//  BabyModel.swift
//  InfantoryApp
//
//  Created by Gilbert Nicholas on 06/04/21.
//

import Foundation

struct BabyUser {
    private(set) var name: String
    private(set) var photo: String
    private(set) var gender: String
}

//DUMMY GROWTH

public struct growthModel {
    var motorik : String
    var socio : String
    
    static func generateDummy() -> [growthModel] {
        return [growthModel(motorik: "Hello Moms, Thank you for bring me to this beautiful world! You are the best mom ever!",
                            socio: "Moms, during the first month i am very sensitive to voices. That's one of the reasons that makes me hard to sleep and awake easily. I also getting better in breastfeeding. Moms, i am still holding my fist tight at this moment because i am so happy to meet you! Moms, i can see faces too, soon i will recognize you right away in every time i see you"),
                growthModel(motorik: "Moms, I am now 2 months old! Time sure flies really fast! Thank you for the past one month in taking care of me in the best way possible!", socio: "Moms, now i can recognize your face right away! I am also able to bob my head when i am in sitting position. Mom, i can show you a bit of my expression too, like smiling a bit. Mom i can also un-fist my hand for 50% of time now. I am able to grow this well because of you, I love you Mom!"),
                growthModel(motorik: "motorik 3", socio: "sosio 3"),
                growthModel(motorik: "motorik 3", socio: "sosio 3"),
                growthModel(motorik: "motorik 3", socio: "sosio 3"),
                growthModel(motorik: "motorik 3", socio: "sosio 3"),
                growthModel(motorik: "motorik 3", socio: "sosio 3"),
                growthModel(motorik: "motorik 3", socio: "sosio 3"),
                growthModel(motorik: "motorik 3", socio: "sosio 3"),
                growthModel(motorik: "motorik 3", socio: "sosio 3"),
                growthModel(motorik: "motorik 3", socio: "sosio 3"),
                growthModel(motorik: "motorik 3", socio: "sosio 3")]
    }
}
