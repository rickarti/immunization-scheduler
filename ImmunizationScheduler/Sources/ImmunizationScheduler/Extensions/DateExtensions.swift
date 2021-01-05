//
//  DateExtensions.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 1/4/21.
//

import Foundation

public extension Date {
    
    func isAfter(_ date: Date) -> Bool {
        self > date
    }
    
    func isBefore(_ date: Date) -> Bool {
        self < date
    }
    
    func isSame(_ date: Date) -> Bool {
        self == date
    }
}
