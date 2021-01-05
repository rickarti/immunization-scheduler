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
    
    init(vaccineType: VaccineType, doseType: DoseType, minimumValidDoseRules: [IntervalRule], startWindowRules: [IntervalRule], endWindowRule: IntervalRule, maximumDateToGiveRule: IntervalRule?) {
        self.vaccineType = vaccineType
        self.doseType = doseType
        self.minimumValidDoseRules = minimumValidDoseRules
        self.startWindowRules = startWindowRules
        self.endWindowRule = endWindowRule
        self.maximumDateToGiveRule = maximumDateToGiveRule
    }
    
    init(vaccineType: VaccineType, doseType: DoseType, startWindowRules: [IntervalRule], endWindowRule: IntervalRule) {
        self.vaccineType = vaccineType
        self.doseType = doseType
        self.minimumValidDoseRules = []
        self.startWindowRules = startWindowRules
        self.endWindowRule = endWindowRule
        self.maximumDateToGiveRule = nil
    }
    
    init(vaccineType: VaccineType, doseType: DoseType, minimumValidDoseRules: [IntervalRule], startWindowRules: [IntervalRule], endWindowRule: IntervalRule) {
        self.vaccineType = vaccineType
        self.doseType = doseType
        self.minimumValidDoseRules = minimumValidDoseRules
        self.startWindowRules = startWindowRules
        self.endWindowRule = endWindowRule
        self.maximumDateToGiveRule = nil
    }
    
    let vaccineType: VaccineType
    let doseType: DoseType
    
    let minimumValidDoseRules: [IntervalRule]
    let startWindowRules: [IntervalRule]
    let endWindowRule: IntervalRule?
    let maximumDateToGiveRule: IntervalRule?
    
    
    
}
