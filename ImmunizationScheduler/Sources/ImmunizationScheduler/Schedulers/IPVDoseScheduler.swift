//
//  IPVDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/1/18.
//

import Foundation

class IPVDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .IPV, givenDoses: [], scheduledDoses: [])]
    }
}
