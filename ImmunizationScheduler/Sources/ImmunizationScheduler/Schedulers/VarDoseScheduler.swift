//
//  VarDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/5/18.
//

import Foundation

class VarDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest, response: ImmunizationScheduleResponse) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .VAR)]
    }
}