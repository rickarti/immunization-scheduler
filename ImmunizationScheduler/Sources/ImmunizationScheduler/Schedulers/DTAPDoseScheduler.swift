//
//  DTAPDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 12/30/20.
//

import Foundation

class DTAPDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .DTAP, givenDoses: [], scheduledDoses: [])]
    }
    
    func getVaccineType() -> VaccineType {
        return .HEP_B
    }
}
