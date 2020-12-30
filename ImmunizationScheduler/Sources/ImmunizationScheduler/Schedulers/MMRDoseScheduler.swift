//
//  MMRDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/1/18.
//

import Foundation

class MMRDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .MMR, givenDoses: [], scheduledDoses: [])]
    }
    
    func getVaccineType() -> VaccineType {
        return .MMR
    }
}
