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
}
