//
//  HepBDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 4/30/18.
//

import Foundation

class HepBDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest, response: ImmunizationScheduleResponse) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .HEP_B)]
    }
    
}