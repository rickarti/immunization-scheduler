//
//  GivenDose.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/23/18.
//

import Foundation

struct GivenDose : Equatable {
    static func == (lhs: GivenDose, rhs: GivenDose) -> Bool {
        return lhs.givenDate == rhs.givenDate && lhs.cvxCode == rhs.cvxCode
    }
    
    let givenDate: Date
    let cvxCode: String
    let doseType: DoseType?
    let externalID: String?
    let vaccineName: String?

    init(givenDate: Date, cvxCode: String) {
        self.givenDate = givenDate
        self.cvxCode = cvxCode
        self.doseType = nil
        self.externalID = nil
        self.vaccineName = nil
    }

    init(givenDate: Date, cvxCode: String, doseType: DoseType) {
        self.givenDate = givenDate
        self.cvxCode = cvxCode
        self.doseType = doseType
        self.externalID = nil
        self.vaccineName = nil
    }
    
    init(givenDate: Date, cvxCode: String, doseType: DoseType, externalID: String, vaccineName: String) {
        self.givenDate = givenDate
        self.cvxCode = cvxCode
        self.doseType = doseType
        self.externalID = externalID
        self.vaccineName = vaccineName
    }
}

