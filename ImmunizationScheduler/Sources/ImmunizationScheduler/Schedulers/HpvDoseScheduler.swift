//
//  HpvDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/5/18.
//

import Foundation

class HpvDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .HPV, givenDoses: [], scheduledDoses: [])]
    }
}
