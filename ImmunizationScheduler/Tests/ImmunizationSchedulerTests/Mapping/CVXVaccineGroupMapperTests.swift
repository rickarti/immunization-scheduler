//
//  CVXVaccineGroupMapperTests.swift
//  ImmunizationSchedulerTests
//
//  Created by Richard Johnson on 2/22/20.
//

import XCTest
@testable import ImmunizationScheduler

class CVXVaccineGroupMapperTests: XCTestCase {

    func testGetMappings_returnsValidMappings() {
        let mappings = CVXVaccineGroupMapper.mappings
        XCTAssertEqual(16, mappings.count)
        
        XCTAssertEqual("03", mappings[0].vaccineGroupCode)
        XCTAssertEqual(["03","94"], mappings[0].vaccineCodes)
        
        XCTAssertEqual("17", mappings[1].vaccineGroupCode)
        XCTAssertEqual(["148","51","17","48","49","46","47","102","22","132","120","50","170","146"], mappings[1].vaccineCodes)
        
        XCTAssertEqual("21", mappings[2].vaccineGroupCode)
        XCTAssertEqual(["21","94"], mappings[2].vaccineCodes)
        
        XCTAssertEqual("45", mappings[3].vaccineGroupCode)
        XCTAssertEqual(["51","45","44","43","42","08","104","102","132","110","146"], mappings[3].vaccineCodes)
        
        XCTAssertEqual("85", mappings[4].vaccineGroupCode)
        XCTAssertEqual(["104","85","31","84","83","52"], mappings[4].vaccineCodes)
        
        XCTAssertEqual("88", mappings[5].vaccineGroupCode)
        XCTAssertEqual(["16","88","168","15","144","140","141","155","149","111","166","161","150","158","171","153","135","151"], mappings[5].vaccineCodes)
        
        XCTAssertEqual("89", mappings[6].vaccineGroupCode)
        XCTAssertEqual(["89","02","10","132","130","120","110","170","146"], mappings[6].vaccineCodes)
        
        XCTAssertEqual("107", mappings[7].vaccineGroupCode)
        XCTAssertEqual(["102","22","01","132","130","120","50","110","170","146","107","106","20"], mappings[7].vaccineCodes)
        
        XCTAssertEqual("108", mappings[8].vaccineGroupCode)
        XCTAssertEqual(["108","32","114","136","147"], mappings[8].vaccineCodes)
        
        XCTAssertEqual("115", mappings[9].vaccineGroupCode)
        XCTAssertEqual(["115"], mappings[9].vaccineCodes)
        
        XCTAssertEqual("122", mappings[10].vaccineGroupCode)
        XCTAssertEqual(["122","74","116","119"], mappings[10].vaccineCodes)
        
        XCTAssertEqual("123", mappings[11].vaccineGroupCode)
        XCTAssertEqual(["123","160"], mappings[11].vaccineCodes)
        
        XCTAssertEqual("128", mappings[12].vaccineGroupCode)
        XCTAssertEqual(["125","126","127","128"], mappings[12].vaccineCodes)
        
        XCTAssertEqual("137", mappings[13].vaccineGroupCode)
        XCTAssertEqual(["137","165","62","118"], mappings[13].vaccineCodes)
        
        XCTAssertEqual("139", mappings[14].vaccineGroupCode)
        XCTAssertEqual(["139","09","113","138"], mappings[14].vaccineCodes)
        
        XCTAssertEqual("152", mappings[15].vaccineGroupCode)
        XCTAssertEqual(["152","100","133"], mappings[15].vaccineCodes)
        
    }
}
