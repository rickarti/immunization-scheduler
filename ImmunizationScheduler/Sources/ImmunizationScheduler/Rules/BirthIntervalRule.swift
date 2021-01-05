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
    
    func apply(params: RuleParameters) -> Date? {

        let result: Date = Calendar.current.date(byAdding: intervalType, value: timeInterval, to: params.patientBirthDate)!
        if inclusive {
            return result
        }
        return Calendar.current.date(byAdding: .day, value: -1, to: result)
    }
}
