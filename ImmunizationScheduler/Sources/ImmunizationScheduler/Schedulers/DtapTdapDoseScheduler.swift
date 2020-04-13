//
//  DtapTdapScheduler.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 5/1/18.
//

import Foundation

class DtapTdapDoseScheduler: DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        return [ImmunizationSchedule(vaccineType: .DTAP, givenDoses: [], scheduledDoses: []), ImmunizationSchedule(vaccineType: .TDAP, givenDoses: [], scheduledDoses: [])]
    }
    
}
