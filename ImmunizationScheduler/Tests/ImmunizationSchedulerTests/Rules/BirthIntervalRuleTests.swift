//
//  BirthIntervalRuleTests.swift
//  ImmunizationSchedulerTests
//
//  Created by Richard Johnson on 12/30/20.
//

import XCTest

@testable import ImmunizationScheduler

class BirthIntervalRuleTests: XCTestCase {
    
    func testApplyIntervalMonth() {
        let rule = BirthIntervalRule(timeInterval: 3, intervalType: .month)
        let ruleParameters = RuleParameters(patientBirthDate: buildDate(1, 1, 2020), givenDoses: [], dueDoses: [])
        
        let resultDate = rule.apply(params: ruleParameters)
        
        XCTAssertEqual(resultDate, buildDate(4, 1, 2020))
    }
    
    func testApplyIntervalWeek() {
        let rule = BirthIntervalRule(timeInterval: 3, intervalType: .weekOfYear)
        let ruleParameters = RuleParameters(patientBirthDate: buildDate(1, 1, 2020), givenDoses: [], dueDoses: [])
        
        let resultDate = rule.apply(params: ruleParameters)
        
        XCTAssertEqual(resultDate, buildDate(1, 22, 2020))
    }
    
    // TODO: this should not be needed, should be able to use my Foundation Extension (why!)
    func buildDate(_ m: Int, _ d: Int, _ y: Int) -> Date {
        let cal = Calendar.current
        return cal.date(from: DateComponents(year: y, month: m, day: d))!
    }
}
