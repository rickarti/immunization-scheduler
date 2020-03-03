//
//  ImmunizationServiceRequestTests.swift
//  ImmunizationSchedulerTests
//
//  Created by Rick Johnson on 3/2/20.
//

import XCTest
@testable import ImmunizationScheduler

class ImmunizationServiceRequestTests: XCTestCase {


    func test_init_datesAreCorrect() {
        let request = ImmunizationScheduleRequest(requestDate: Date(), birthDate: Date(), givenDoses: [GivenDose]())

        print(request.requestDate)
        print(request.birthDate)
        
    }

    
//    Wed Jun 14 00:00:00 PDT 2017
//    Sat Oct 14 00:00:00 PDT 2017

}
