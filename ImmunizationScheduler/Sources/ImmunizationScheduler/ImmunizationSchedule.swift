//
//  ImmunizationSchedule.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 4/25/18.
//

import Foundation

struct ImmunizationSchedule {
    
    let vaccineType: VaccineType
    let seriesStatus: SeriesStatus = .notIndicated
    let givenDoses: [GivenDose] = [GivenDose]()
    let scheduledDoses:[ScheduledDose] = [ScheduledDose]()
    }
