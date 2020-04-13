//
//  HepADoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/5/18.
//

import Foundation

class HepADoseScheduler: DoseScheduler {
    
    func getVaccineType() -> VaccineType {
        return .HEP_A
    }
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {
        
        
        let givenDoses: [GivenDose] = self.getGivenDoses(request: request, vaccineType: self.getVaccineType())
        var scheduledDoses: [ScheduledDose] = [];
        
//        LocalDateTime birthDate = LocalDateTime.ofInstant(request.getPatientBirthDate().toInstant(), ZoneId.systemDefault());
//        LocalDateTime requestDate = LocalDateTime.ofInstant(request.getRequestDate().toInstant(), ZoneId.systemDefault());

        // DoseScheduleIterator doseScheduleIterator = validateDoses(givenDoses, scheduledDoses, request.birthDate, request.requestDate);

        self.scheduleDueDoses(patientBirthDate: request.birthDate, requestDate: request.requestDate, givenDoses: givenDoses, scheduledDoses: &scheduledDoses, maxDate: nil)
        let immunizationSchedule: ImmunizationSchedule = ImmunizationSchedule(vaccineType: self.getVaccineType(), givenDoses: givenDoses, scheduledDoses: scheduledDoses)

        return [immunizationSchedule];
        
        
//        
//        let cal = Calendar.current
//        
//        let firstDose = ScheduledDose(earliestRecommendedDueDate: cal.date(from: DateComponents(year: 2021, month: 1, day: 1))!)
//        let secondDose = ScheduledDose(earliestRecommendedDueDate: cal.date(from: DateComponents(year: 2021, month: 7, day: 1))!)
//        
//        let schedDoses = ImmunizationSchedule(vaccineType: .HEP_A, givenDoses: [], scheduledDoses: [firstDose, secondDose])
//        
//        return [schedDoses]
    }
    
    func getGivenDoses(request: ImmunizationScheduleRequest, vaccineType: VaccineType) -> [GivenDose] {
        return []
    }
    
    func scheduleDueDoses(patientBirthDate: Date, requestDate: Date, givenDoses: [GivenDose], scheduledDoses: inout [ScheduledDose], maxDate: Date?) {

        let cal = Calendar.current
        
        let firstDose = ScheduledDose(earliestRecommendedDueDate: cal.date(from: DateComponents(year: 2021, month: 1, day: 1))!)
        let secondDose = ScheduledDose(earliestRecommendedDueDate: cal.date(from: DateComponents(year: 2021, month: 7, day: 1))!)

        scheduledDoses.append(firstDose)
        scheduledDoses.append(secondDose)
    }
}
