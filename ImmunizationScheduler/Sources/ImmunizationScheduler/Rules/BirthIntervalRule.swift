//
//  BirthIntervalRule.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/13/20.
//

import Foundation

struct BirthIntervalRule : IntervalRule {
    
    var timeInterval: Int
    var intervalType: Calendar.Component
    var inclusive: Bool = true
    
    func apply(params: RuleParameters) {
        // TODO
    }
}
