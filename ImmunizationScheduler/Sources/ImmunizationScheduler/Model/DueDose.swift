//
//  ScheduledDose.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 4/25/18.
//

import Foundation

struct DueDose {

    let earliestRecommendedDueDate: Date
    let latestRecommendedDueDate: Date
    let minimumDateToGive: Date
    let maximumDateToGive: Date?
    let vaccineType: VaccineType
    let doseType: DoseType
    let isCatchup: Bool
}
