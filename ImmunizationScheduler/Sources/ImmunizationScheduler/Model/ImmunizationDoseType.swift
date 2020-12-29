//
//  ImmunizationDoseType.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/13/20.
//

import Foundation

struct ImmunizationDoseType : Equatable {
    static func == (lhs: ImmunizationDoseType, rhs: ImmunizationDoseType) -> Bool {
        return lhs.vaccineType == rhs.vaccineType && lhs.doseType == rhs.doseType
    }
    
    
    let vaccineType: VaccineType
    let doseType: DoseType
    let startWindowRules: [IntervalRule]
    let endWindowRules: [IntervalRule]
    
    
    
}
