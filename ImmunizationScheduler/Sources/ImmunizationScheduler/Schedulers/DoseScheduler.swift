//
//  DoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 4/30/18.
//

import Foundation

protocol DoseScheduler {
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule]
}

extension DoseScheduler {
    func getMaxDate(birthDate: Date) -> Date? {
        // return birthDate.plusYears(18);
        return nil
    }
    
    func getGivenDosesforType(request: ImmunizationScheduleRequest, vaccineType: VaccineType) -> [GivenDose] {
        return getGivenDosesforTypes(request: request, vaccineTypes:[vaccineType])
    }
    
    func getGivenDosesforTypes(request: ImmunizationScheduleRequest, vaccineTypes: [VaccineType]) -> [GivenDose] {
        return CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: vaccineTypes)
    }
}
