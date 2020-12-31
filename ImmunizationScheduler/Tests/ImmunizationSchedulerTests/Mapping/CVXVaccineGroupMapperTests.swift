//
//  CVXVaccineGroupMapperTests.swift
//  ImmunizationSchedulerTests
//
//  Created by Richard Johnson on 2/22/20.
//

import XCTest
@testable import ImmunizationScheduler

class CVXVaccineGroupMapperTests: XCTestCase {
    
    let ALL_VACCINE_CODES = ["01","02","03","08","09","10","15","16","17","20","21","22","32","42","31",
                             "43","44","45","46","47","48","49","50","51","52","62","74","83","84","85","88","89","94","100","102","104",
                             "106","107","108","110","111","113","114","115","116","118","119","120","122","123","125","126","127","128",
                             "130","132","133","135","136","137","140","138","139","141","144","146","147","148","149","150","151","152",
                             "153","155","158","160","161","165","166","168","170","171"]

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
    
    func test_getGivenDosesForTypes_returnsCorrectDoses() {
     
        let request = requestWithAllVaccineCodes()
        XCTAssertEqual(82, request.givenDoses.count)
        
        XCTAssertEqual(11, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.HEP_B]).count)
        XCTAssertEqual(4, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.RV]).count)
        XCTAssertEqual(13, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.DTAP]).count)
        XCTAssertEqual(14, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.HI_B]).count)
        XCTAssertEqual(3, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.PCV_13]).count)
        XCTAssertEqual(9, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.IPV]).count)
        XCTAssertEqual(18, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.INFLUENZA]).count)
        XCTAssertEqual(2, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.MMR]).count)
        XCTAssertEqual(2, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.VAR]).count)
        XCTAssertEqual(6, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.HEP_A]).count)
        XCTAssertEqual(5, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.MENINGOCOCCAL]).count)
        XCTAssertEqual(1, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.TDAP]).count)
        XCTAssertEqual(4, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.HPV]).count)
        XCTAssertEqual(0, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.MENINGOCOCCAL_B]).count)
        XCTAssertEqual(0, CVXVaccineGroupMapper.getGivenDosesForTypes(request: request, vaccineTypes: [.PPSV23]).count)
        
        
    }
    
    func requestWithAllVaccineCodes() -> ImmunizationScheduleRequest {
        var builder = ImmunizationScheduleRequestBuilder(birthDate: date(10, 15, 2020), requestDate: date(12, 15, 2020))
        
        for code in ALL_VACCINE_CODES {
            _ = builder.withGivenDose(givenDose: GivenDose(givenDate: date(12, 31, 2020), cvxCode: code))
        }
        return builder.build()
    }
}
