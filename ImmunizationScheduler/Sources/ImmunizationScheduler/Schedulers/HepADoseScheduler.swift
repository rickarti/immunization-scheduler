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
                             startWindowRules:
                                [BirthIntervalRule(timeInterval: 12, intervalType: .month),
                                PriorDoseIntervalRule(timeInterval: 6, intervalType: .month)],
                             endWindowRule:
                                BirthIntervalRule(timeInterval: 2, intervalType: .year))
    
    static let HEP_A_SECOND_DOSE: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .HEP_A, doseType: .secondDose,
                             startWindowRules:
                                [PriorDoseIntervalRule(timeInterval: 6, intervalType: .month)],
                             endWindowRule:
                                PriorDoseIntervalRule(timeInterval: 18, intervalType: .month))
    
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
}
