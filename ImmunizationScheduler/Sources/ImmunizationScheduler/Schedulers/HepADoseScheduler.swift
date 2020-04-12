//
//  HepADoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/5/18.
//

import Foundation

class HepADoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        
        let cal = Calendar.current
        
        let firstDose = ScheduledDose(earliestRecommendedDueDate: cal.date(from: DateComponents(year: 2021, month: 1, day: 1))!)
        let secondDose = ScheduledDose(earliestRecommendedDueDate: cal.date(from: DateComponents(year: 2021, month: 7, day: 1))!)
        
        let schedDoses = ImmunizationSchedule(vaccineType: .HEP_A, scheduledDoses: [firstDose, secondDose])
        
        return [schedDoses]
    }
}
