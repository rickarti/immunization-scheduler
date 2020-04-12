//
//  InfluenzaDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/1/18.
//

import Foundation

class InfluenzaDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .INFLUENZA, scheduledDoses: [])]
    }
}
