//
//  BasicDoseSchedulerDelegate.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/14/20.
//

import Foundation

protocol BasicDoseSchedulerDelegate : class {
    
    // func scheduleDueDoses(patientBirthDate: Date, requestDate: Date, givenDoses: [GivenDose], scheduledDoses: inout [DueDose], maxDate: Date?)
    
    func getNextDoseType(currentDoseType: ImmunizationDoseType?, givenDoses: [GivenDose], birthDate: Date, requestDate: Date) -> ImmunizationDoseType?
    
    func getVaccineType() -> VaccineType
    
}
