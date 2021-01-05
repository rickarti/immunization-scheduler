//
//  MedicationIntervalRule.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/13/20.
//

import Foundation

struct MedicationIntervalRule : IntervalRule {
    var timeInterval: Int
    var intervalType: Calendar.Component
    var inclusive: Bool
    
    func apply(params: RuleParameters)-> Date? {
        return Date()
    }
}
