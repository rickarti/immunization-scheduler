//
//  ImmunizationScheduleRequestBuilder.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 3/29/20.
//

import Foundation

struct ImmunizationScheduleRequestBuilder {
    
    var birthDate: Date
    var requestDate: Date
    var givenDoses: [GivenDose] = [GivenDose]()
    
    func build() -> ImmunizationScheduleRequest {
        
        return ImmunizationScheduleRequest(requestDate: requestDate, birthDate: birthDate, givenDoses: givenDoses)
    }
    
    mutating func withBirthDate(_ date: Date) -> ImmunizationScheduleRequestBuilder {
        self.birthDate = date
        return self
    }
    
    mutating func withRequestDate(_ date: Date) -> ImmunizationScheduleRequestBuilder {
        self.requestDate = date
        return self
    }
    
    mutating func withGivenDose(givenDose: GivenDose) -> ImmunizationScheduleRequestBuilder {
        givenDoses.append(givenDose)
        return self
    }
}
