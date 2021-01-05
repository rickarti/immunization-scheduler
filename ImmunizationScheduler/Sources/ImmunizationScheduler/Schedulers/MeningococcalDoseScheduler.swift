//
//  MeningococcalDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 5/5/18.
//

import Foundation

class MeningococcalDoseScheduler: BasicDoseScheduler, BasicDoseSchedulerDelegate {
    
    override init() {
        super.init()
        delegate = self
    }
    
    static let MENINGOCOCCAL_FIRST_DOSE: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .MENINGOCOCCAL, doseType: .firstDose,
                             minimumValidDoseRules:
                                [BirthIntervalRule(timeInterval: 10, intervalType: .year),
                                 PriorDoseIntervalRule(timeInterval: 8, intervalType: .weekOfYear)],
                             startWindowRules:
                                [BirthIntervalRule(timeInterval: 11, intervalType: .year)],
                             endWindowRule:
                                BirthIntervalRule(timeInterval: 13, intervalType: .year),
                             maximumDateToGiveRule:
                                BirthIntervalRule(timeInterval: 19, intervalType: .year))
    
    static let MENINGOCOCCAL_BOOSTER: ImmunizationDoseType = ImmunizationDoseType(vaccineType: .MENINGOCOCCAL, doseType: .booster,
                             minimumValidDoseRules: [],
                             startWindowRules:
                                [BirthIntervalRule(timeInterval: 16, intervalType: .year),
                                 PriorDoseIntervalRule(timeInterval: 8, intervalType: .weekOfYear)],
                             endWindowRule:
                                BirthIntervalRule(timeInterval: 17, intervalType: .year),
                             maximumDateToGiveRule:
                                BirthIntervalRule(timeInterval: 21, intervalType: .year))

    
    func getNextDoseType(currentDoseType: ImmunizationDoseType?, givenDoses: [GivenDose], birthDate: Date, requestDate: Date) -> ImmunizationDoseType? {
        if currentDoseType == nil {return MeningococcalDoseScheduler.MENINGOCOCCAL_FIRST_DOSE}
        if currentDoseType == MeningococcalDoseScheduler.MENINGOCOCCAL_FIRST_DOSE {
            //return MeningococcalDoseScheduler.MENINGOCOCCAL_BOOSTER}
            // The First dose is final if given at age >= 16
//            Optional<GivenDose> firstDose = givenDoses.stream().filter(d -> d.isDoseType(FIRST_DOSE)).findFirst();
//            if(firstDose.isPresent()) {
//                if (birthDate.plusYears(16).isBefore(getGivenDate(firstDose.get()))) {
//                    return null;
//                } else {
//                    return MENINGOCOCCAL_BOOSTER;
//                }
//            }
//            // If there are no pending doses to classify and the request is after age 16, the Booster will not be due
//            Optional<GivenDose> pendingDose = givenDoses.stream().filter(DoseUtil::isPending).findFirst();
//            if (!pendingDose.isPresent()) {
//                if (birthDate.plusYears(16).isBefore(requestDate))
//                    return null;
            }
            
            return nil
    }
    
    func getVaccineType() -> VaccineType {
        return .MENINGOCOCCAL
    }
}
