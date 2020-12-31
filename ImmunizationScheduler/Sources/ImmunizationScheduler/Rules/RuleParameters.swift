//
//  RuleParameters.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/13/20.
//

import Foundation

struct RuleParameters {
    
    let patientBirthDate: Date
    let givenDoses: [GivenDose]
    let dueDoses: [DueDose]
    let useMinimumDateToGive: Bool
    
    init(patientBirthDate: Date, givenDoses: [GivenDose], dueDoses: [DueDose], useMinimumDateToGive: Bool) {
        self.patientBirthDate = patientBirthDate
        self.givenDoses = givenDoses
        self.dueDoses = dueDoses
        self.useMinimumDateToGive = useMinimumDateToGive
    }
    
    init(patientBirthDate: Date, givenDoses: [GivenDose], dueDoses: [DueDose]) {
        self.patientBirthDate = patientBirthDate
        self.givenDoses = givenDoses
        self.dueDoses = dueDoses
        self.useMinimumDateToGive = false
    }
}
