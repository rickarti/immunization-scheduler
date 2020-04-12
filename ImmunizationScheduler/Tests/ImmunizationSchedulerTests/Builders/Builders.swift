//
//  Builders.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 3/29/20.
//

import Foundation

public func date(_ m: Int, _ d: Int, _ y: Int) -> Date {
    let cal = Calendar.current
    return cal.date(from: DateComponents(year: y, month: m, day: d))!
}

public func date(_ date: (m:Int, d:Int, y:Int)) -> Date {
    let cal = Calendar.current
    return cal.date(from: DateComponents(year: date.y, month: date.m, day: date.d))!
}
