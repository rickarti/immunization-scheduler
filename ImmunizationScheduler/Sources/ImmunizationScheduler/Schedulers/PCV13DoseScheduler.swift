//
//  PCV13DoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 5/1/18.
//

import Foundation
class PCV13DoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .PCV_13, givenDoses: [], scheduledDoses: [])]
    }
    
}
