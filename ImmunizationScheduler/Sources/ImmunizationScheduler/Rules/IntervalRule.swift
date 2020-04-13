//
//  IntervalRule.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/13/20.
//

import Foundation

protocol IntervalRule {
    
    var timeInterval: Int { get }
    var intervalType: Calendar.Component { get }
    var inclusive: Bool { get }
    
    func apply(params: RuleParameters)
}
