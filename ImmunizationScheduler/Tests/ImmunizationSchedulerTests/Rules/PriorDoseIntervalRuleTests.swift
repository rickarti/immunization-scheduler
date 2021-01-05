//
//  PriorDoseIntervalRuleTests.swift
//  ImmunizationSchedulerTests
//
//  Created by Richard Johnson on 1/1/21.
//

import XCTest

@testable import ImmunizationScheduler

class PriorDoseIntervalRuleTests: XCTestCase {

    func testApplyIntervalSixMonths() {
        let rule = PriorDoseIntervalRule(timeInterval: 6, intervalType: .month)
        let ruleParameters = RuleParameters(patientBirthDate: buildDate(1, 1, 2020), givenDoses: [], dueDoses: [])
        
        let resultDate = rule.apply(params: ruleParameters)
        
        XCTAssertTrue(resultDate != nil)
        XCTAssertEqual(resultDate, buildDate(7, 1, 2020))
    }

    // TODO: this should not be needed, should be able to use my Foundation Extension (why!)
    func buildDate(_ m: Int, _ d: Int, _ y: Int) -> Date {
        let cal = Calendar.current
        return cal.date(from: DateComponents(year: y, month: m, day: d))!
    }
    
}
