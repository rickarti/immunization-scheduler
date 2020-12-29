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
//    private Date minimumDateToGive;
//    private Date maximumDateToGive;
    let vaccineType: VaccineType
//    private Medication medication;
    let doseType: DoseType;
//    private boolean isCatchup;
}
