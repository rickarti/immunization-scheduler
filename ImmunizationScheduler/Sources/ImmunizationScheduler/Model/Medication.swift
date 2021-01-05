//
//  Medication.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 1/1/21.
//

import Foundation

enum Medication {
    case ActHib // ("48"), // 48
    case Pentacel // ("120"), // 48
    case PedvaxHIB // ("49"), // 49
    case Comvax // ("51"), // 49
    case MMRV // ("94"),
    case Rotarix // ("119"), // 119
    case RotaTeq // ("116"), // 116
    case unknown // ("");
    
    var cvxCode : String {
        switch self {
            case .ActHib: return "48"
            case .Pentacel: return "120"
            case .PedvaxHIB: return "49"
            case .Comvax: return "51"
            case .MMRV: return "94"
            case .Rotarix: return "119"
            case .RotaTeq: return "03"
            case .unknown: return "21"
        }
    }
}
