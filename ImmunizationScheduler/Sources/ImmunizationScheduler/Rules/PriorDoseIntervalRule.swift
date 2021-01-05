//
//  PriorDoseIntervalRule.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/13/20.
//

import Foundation

struct PriorDoseIntervalRule : IntervalRule {
    
    var timeInterval: Int
    var intervalType: Calendar.Component
    var inclusive: Bool = true
    var doseType: DoseType? = nil
    
    func apply(params: RuleParameters) -> Date? {
        if let doseType = self.doseType { // immunizationDoseType not null
            // filter given doses to see if the current rule applies to the last given dose of this type
            let priorDose = params.givenDoses.filter{$0.doseType == doseType}.last
            if let actualPriorDose = priorDose {
                return Calendar.current.date(byAdding: intervalType, value: timeInterval, to: actualPriorDose.givenDate)
            }
            // filter future doses to see if the current rule applies to last planned dose of this type
            let dueDose = params.dueDoses.filter{doseType == $0.doseType}.last
            if let actualDueDose = dueDose {
                if params.useMinimumDateToGive {
                    return Calendar.current.date(byAdding: intervalType, value: timeInterval, to: actualDueDose.minimumDateToGive)
                } else {
                    return Calendar.current.date(byAdding: intervalType, value: timeInterval, to: actualDueDose.earliestRecommendedDueDate)
                }
            }
        } else {
            // Find the 'last' prior dose with no dose type
            let priorDose = params.givenDoses.filter{$0.doseType != nil}.last
            if let actualPriorDose = priorDose {
                return Calendar.current.date(byAdding: intervalType, value: timeInterval, to: actualPriorDose.givenDate)
            }
        }
        return nil
    }
}
