//
//  HibScheduler.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 5/1/18.
//

import Foundation

class HibDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest, response: ImmunizationScheduleResponse) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .HI_B)]
    }
    
}