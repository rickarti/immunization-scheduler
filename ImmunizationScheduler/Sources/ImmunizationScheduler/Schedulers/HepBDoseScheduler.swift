//
//  HepBDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 4/30/18.
//

import Foundation

class HepBDoseScheduler: BasicDoseScheduler, BasicDoseSchedulerDelegate {
    
    override init() {
        super.init()
        delegate = self
    }
    
    static let HEP_B_FIRST_DOSE: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .HEP_B, doseType: .firstDose,
                             startWindowRules:
                                [BirthIntervalRule(timeInterval: 0, intervalType: .weekOfYear)],
                             endWindowRule:
                                BirthIntervalRule(timeInterval: 0, intervalType: .weekOfYear))
    
    static let HEP_B_SECOND_DOSE: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .HEP_B, doseType: .secondDose,
                             minimumValidDoseRules:
                                [BirthIntervalRule(timeInterval: 4, intervalType: .weekOfYear),
                                 PriorDoseIntervalRule(timeInterval: 4, intervalType: .weekOfYear)],
                             startWindowRules:
                                [BirthIntervalRule(timeInterval: 1, intervalType: .month),
                                 PriorDoseIntervalRule(timeInterval: 4, intervalType: .weekOfYear)],
                             endWindowRule:
                                BirthIntervalRule(timeInterval: 4, intervalType: .month))
    
    static let HEP_B_THIRD_DOSE: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .HEP_B, doseType: .thirdDose,
                             minimumValidDoseRules:
                                [BirthIntervalRule(timeInterval: 24, intervalType: .weekOfYear),
                                 PriorDoseIntervalRule(timeInterval: 16, intervalType: .weekOfYear, doseType: .firstDose),
                                 PriorDoseIntervalRule(timeInterval: 8, intervalType: .weekOfYear)],
                             startWindowRules:
                                [BirthIntervalRule(timeInterval: 6, intervalType: .month),
                                 PriorDoseIntervalRule(timeInterval: 16, intervalType: .weekOfYear, doseType: .firstDose),
                                 PriorDoseIntervalRule(timeInterval: 8, intervalType: .weekOfYear)],
                             endWindowRule:
                                BirthIntervalRule(timeInterval: 19, intervalType: .month))
    
    func getNextDoseType(currentDoseType: ImmunizationDoseType?, givenDoses: [GivenDose], birthDate: Date, requestDate: Date) -> ImmunizationDoseType? {
        if currentDoseType == nil {return HepBDoseScheduler.HEP_B_FIRST_DOSE}
        if currentDoseType == HepBDoseScheduler.HEP_B_FIRST_DOSE {return HepBDoseScheduler.HEP_B_SECOND_DOSE}
        if currentDoseType == HepBDoseScheduler.HEP_B_SECOND_DOSE {return HepBDoseScheduler.HEP_B_THIRD_DOSE}
        return nil
    }
    
    func getVaccineType() -> VaccineType {
        return .HEP_B
    }
}
