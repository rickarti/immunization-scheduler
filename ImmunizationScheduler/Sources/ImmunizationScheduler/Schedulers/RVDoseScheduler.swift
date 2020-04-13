//
//  RVDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 5/1/18.
//

import Foundation

class RVDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .RV, givenDoses: [], scheduledDoses: [])]
    }
}
