//
//  HepADoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/5/18.
//

import Foundation

class HepADoseScheduler: BasicDoseScheduler, BasicDoseSchedulerDelegate {
        
    override init() {
        super.init()
        delegate = self
    }
    
    static let HEP_A_FIRST_DOSE: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .HEP_A, doseType: .firstDose,
                             minimumValidDoseRules: [],
                             startWindowRules:
                                [BirthIntervalRule(timeInterval: 12, intervalType: .month),
                                PriorDoseIntervalRule(timeInterval: 6, intervalType: .month)],
                             endWindowRule:
                                BirthIntervalRule(timeInterval: 2, intervalType: .year),
                             maximumDateToGiveRule: nil)
    
    static let HEP_A_SECOND_DOSE: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .HEP_A, doseType: .secondDose,
                             minimumValidDoseRules: [],
                             startWindowRules:
                                [PriorDoseIntervalRule(timeInterval: 6, intervalType: .month)],
                             endWindowRule:
                                PriorDoseIntervalRule(timeInterval: 18, intervalType: .month),
                             maximumDateToGiveRule: nil)
    
    func getNextDoseType(currentDoseType: ImmunizationDoseType?, givenDoses: [GivenDose], birthDate: Date, requestDate: Date) -> ImmunizationDoseType? {
        if currentDoseType == nil {return HepADoseScheduler.HEP_A_FIRST_DOSE}
        if currentDoseType == HepADoseScheduler.HEP_A_FIRST_DOSE {return HepADoseScheduler.HEP_A_SECOND_DOSE}
        return nil
    }
    
    func getVaccineType() -> VaccineType {
        return .HEP_A
    }
    
    func getGivenDoses(request: ImmunizationScheduleRequest, vaccineType: VaccineType) -> [GivenDose] {
        return []
    }
    
//    func scheduleDueDoses(patientBirthDate: Date, requestDate: Date, givenDoses: [GivenDose], scheduledDoses: inout [DueDose], maxDate: Date?) {
////
////        let cal = Calendar.current
////
////        let firstDose = DueDose(earliestRecommendedDueDate: cal.date(from: DateComponents(year: 2021, month: 1, day: 1))!)
////        let secondDose = DueDose(earliestRecommendedDueDate: cal.date(from: DateComponents(year: 2021, month: 7, day: 1))!)
////
////        DueDose(earliestRecommendedDueDate: <#T##Date#>, vaccineType: <#T##VaccineType#>, doseType: <#T##DoseType#>)
////
////        scheduledDoses.append(firstDose)
////        scheduledDoses.append(secondDose)
//    }
}
