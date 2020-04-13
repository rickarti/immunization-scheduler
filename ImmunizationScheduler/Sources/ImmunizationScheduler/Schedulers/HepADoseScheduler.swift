//
//  HepADoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/5/18.
//

import Foundation

class HepADoseScheduler: DoseScheduler {
    
    static let HEP_A_FIRST_DOSE: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .HEP_A, doseType: .firstDose,
        startWindowRules:
            [BirthIntervalRule(timeInterval: 12, intervalType: .month),
             PriorDoseIntervalRule(timeInterval: 6, intervalType: .month)])
    
    static let HEP_A_SECOND_DOSE: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .HEP_A, doseType: .secondDose,
        startWindowRules:
            [PriorDoseIntervalRule(timeInterval: 6, intervalType: .month)])
    
    
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
