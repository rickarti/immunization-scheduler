//
//  VaccineType.swift
//  ImmunizationScheduler
//
//  Created by Rick Johnson on 4/24/18.
//

import Foundation

enum VaccineType {
    case HEP_B // ("45")
    case RV // ("122")
    case DTAP // ("107")
    case HI_B // ("17")
    case PCV_13 // ("152")
    case IPV // ("89")
    case INFLUENZA // ("88")
    case MMR // ("03")
    case VAR // ("21")
    case HEP_A // ("85")
    case MENINGOCOCCAL // ("108")
    case TDAP // ("115")
    case TD // ("139")
    case HPV // ("137")
    case MENINGOCOCCAL_B // ("")
    case PPSV23 // ("33")
    // case HZV // ("121")
    // case PPSV23 // ("33")
    
    var cvxGroupCode : String {
        switch self {
            case .HEP_B: return "45"
            case .RV: return "122"
            case .DTAP: return "107"
            case .HI_B: return "17"
            case .PCV_13: return "152"
            case .IPV: return "89"
            case .INFLUENZA: return "88"
            case .MMR: return "03"
            case .VAR: return "21"
            case .HEP_A: return "85"
            case .MENINGOCOCCAL: return "108"
            case .TDAP: return "115"
            case .TD: return "139"
            case .HPV: return "137"
            case .MENINGOCOCCAL_B: return ""
            case .PPSV23: return ""
        }
    }
}
