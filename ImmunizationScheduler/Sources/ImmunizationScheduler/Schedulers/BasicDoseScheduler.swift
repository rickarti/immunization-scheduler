//
//  BasicDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/11/20.
//

import Foundation

class BasicDoseScheduler : DoseScheduler {
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        
        
        let immunizationSchedule: ImmunizationSchedule = ImmunizationSchedule(vaccineType: .HEP_A, givenDoses: [], scheduledDoses: [])
        return [immunizationSchedule]
    }
    
    
    
    
}
