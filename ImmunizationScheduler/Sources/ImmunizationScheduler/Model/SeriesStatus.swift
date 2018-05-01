//
//  SeriesStatus.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 4/25/18.
//

import Foundation

enum SeriesStatus {
    case notIndicated
    case due
    case upToDate
    case catchUp
    case complete
    case incompleteAgedOut
    case catchUpWithTdapTD
    case completeWithTdapTD
}
