//
//  MeningococcalDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/5/18.
//

import Foundation

class MeningococcalDoseScheduler: DoseScheduler {
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .MENINGOCOCCAL, givenDoses: [], scheduledDoses: [])]
    }
}
