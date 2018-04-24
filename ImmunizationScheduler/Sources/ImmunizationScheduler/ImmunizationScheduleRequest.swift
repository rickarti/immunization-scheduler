//
//  ImmunizationScheduleRequest.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/22/18.
//

import Foundation

struct ImmunizationScheduleRequest {
    
    let requestDate: Date
    let birthDate: Date
    let givenDoses: [GivenDose]
}
