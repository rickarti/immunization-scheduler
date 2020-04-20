//
//  DoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 4/30/18.
//

import Foundation

protocol DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule]
    
    
}

extension DoseScheduler {
    func getMaxDate(birthDate: Date) -> Date? {
        // return birthDate.plusYears(18);
        return nil
    }
}
