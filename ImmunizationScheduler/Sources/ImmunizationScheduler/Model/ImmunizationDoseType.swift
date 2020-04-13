//
//  ImmunizationDoseType.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/13/20.
//

import Foundation

struct ImmunizationDoseType {
    
    let vaccineType: VaccineType
    let doseType: DoseType
    let startWindowRules: [IntervalRule]
    
    
    
}
