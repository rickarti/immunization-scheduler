//
//  DateExtensionTests.swift
//  ImmunizationSchedulerTests
//
//  Created by Richard Johnson on 1/4/21.
//

import XCTest

@testable import ImmunizationScheduler

class DateExtensionTests: XCTestCase {

    func test_isAfter_isTrue() {
        let dateOne = date(1, 20, 2021)
        let dateTwo = date(1, 21, 2021)
        
        XCTAssertTrue(dateTwo.isAfter(dateOne))
    }
    
    func test_isAfter_isFalse() {
        let dateOne = date(1, 20, 2021)
        let dateTwo = date(1, 21, 2021)
        
        XCTAssertFalse(dateOne.isAfter(dateTwo))
    }
    
    func test_isBefore_isTrue() {
        let dateOne = date(1, 20, 2021)
        let dateTwo = date(1, 21, 2021)
        
        XCTAssertTrue(dateOne.isBefore(dateTwo))
    }
    
    func test_isBefore_isFalse() {
        let dateOne = date(1, 20, 2021)
        let dateTwo = date(1, 21, 2021)
        
        XCTAssertFalse(dateTwo.isBefore(dateOne))
    }
    
    func test_isSame_isTrue() {
        let dateOne = date(1, 20, 2021)
        let dateTwo = date(1, 20, 2021)
        
        XCTAssertTrue(dateOne.isSame(dateTwo))
        XCTAssertTrue(dateTwo.isSame(dateOne))
    }
    
    func test_isSame_isFalse() {
        let dateOne = date(1, 19, 2021)
        let dateTwo = date(1, 20, 2021)
        
        XCTAssertFalse(dateOne.isSame(dateTwo))
        XCTAssertFalse(dateTwo.isSame(dateOne))
    }
}
