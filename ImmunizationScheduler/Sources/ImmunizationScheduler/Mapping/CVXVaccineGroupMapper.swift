//
//  CVXVaccineGroupMapper.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 2/22/20.
//

import Foundation

struct CVXVaccineGroupMapper {
    
    static let mappings: [CVXVaccineMapping] = [
        CVXVaccineMapping(vaccineGroupCode: "03", vaccineCodes: ["03","94"]),
        CVXVaccineMapping(vaccineGroupCode: "17", vaccineCodes: ["148","51","17","48","49","46","47","102","22","132","120","50","170","146"]),
        CVXVaccineMapping(vaccineGroupCode: "21", vaccineCodes: ["21","94"]),
        CVXVaccineMapping(vaccineGroupCode: "45", vaccineCodes: ["51","45","44","43","42","08","104","102","132","110","146"]),
        CVXVaccineMapping(vaccineGroupCode: "85", vaccineCodes: ["104","85","31","84","83","52"]),
        CVXVaccineMapping(vaccineGroupCode: "88", vaccineCodes: ["16","88","168","15","144","140","141","155","149","111","166","161","150","158","171","153","135","151"]),
        CVXVaccineMapping(vaccineGroupCode: "89", vaccineCodes: ["89","02","10","132","130","120","110","170","146"]),
        CVXVaccineMapping(vaccineGroupCode: "107", vaccineCodes: ["102","22","01","132","130","120","50","110","170","146","107","106","20"]),
        CVXVaccineMapping(vaccineGroupCode: "108", vaccineCodes: ["108","32","114","136","147"]),
        CVXVaccineMapping(vaccineGroupCode: "115", vaccineCodes: ["115"]),
        CVXVaccineMapping(vaccineGroupCode: "122", vaccineCodes: ["122","74","116","119"]),
        CVXVaccineMapping(vaccineGroupCode: "123", vaccineCodes: ["123","160"]),
        CVXVaccineMapping(vaccineGroupCode: "128", vaccineCodes: ["125","126","127","128"]),
        CVXVaccineMapping(vaccineGroupCode: "137", vaccineCodes:["137","165","62","118"]),
        CVXVaccineMapping(vaccineGroupCode: "139", vaccineCodes: ["139","09","113","138"]),
        CVXVaccineMapping(vaccineGroupCode: "152", vaccineCodes:["152","100","133"])
    ]
}
