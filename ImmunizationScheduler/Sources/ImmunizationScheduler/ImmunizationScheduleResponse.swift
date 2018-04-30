//
//  ImmunizationScheduleResponse.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/23/18.
//

import Foundation

struct ImmunizationScheduleResponse {
    
    let currentDate: Date = Date()
    let immunizationSchedules: [ImmunizationSchedule]
}
