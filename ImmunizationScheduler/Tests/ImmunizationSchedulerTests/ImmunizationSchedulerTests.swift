import XCTest

@testable import ImmunizationScheduler

final class ImmunizationSchedulerTests: XCTestCase {
    
    func testRequestDates() {
        let request: ImmunizationScheduleRequest = ImmunizationScheduleRequestBuilder(
            birthDate: date(10, 15, 2020),
            requestDate: date(11, 15, 2020))
            .build()
        
        XCTAssertNotNil(request)
        XCTAssertNotNil(request.birthDate)
        
        let calendar = Calendar.current
        let birthDateComponents = calendar.dateComponents([.year, .month, .day], from: request.birthDate)
        XCTAssertEqual(10, birthDateComponents.month!)
        XCTAssertEqual(15, birthDateComponents.day!)
        XCTAssertEqual(2020, birthDateComponents.year!)
        
        
        XCTAssertNotNil(request.requestDate)
        let requestDateComponents = calendar.dateComponents([.year, .month, .day], from: request.requestDate)
        XCTAssertEqual(11, requestDateComponents.month!)
        XCTAssertEqual(15, requestDateComponents.day!)
        XCTAssertEqual(2020, requestDateComponents.year!)
        
        print("birthDate: \(request.birthDate)")
        print("requestDate: \(request.requestDate)")
    }
    
    func testSchedule() {
        let immunizationScheduler = ImmunizationScheduler()
        
        let request: ImmunizationScheduleRequest = ImmunizationScheduleRequestBuilder(
            birthDate: date(10, 15, 2020),
            requestDate: date(11, 15, 2020))
            .build()
        let response = immunizationScheduler.schedule(request: request)
        
        XCTAssertNotNil(response)
        XCTAssertEqual(13, response.immunizationSchedules.count)
        
        XCTAssertEqual(.HEP_B, response.immunizationSchedules[0].vaccineType)
        XCTAssertEqual(.RV, response.immunizationSchedules[1].vaccineType)
        XCTAssertEqual(.DTAP, response.immunizationSchedules[2].vaccineType)
        XCTAssertEqual(.TDAP, response.immunizationSchedules[3].vaccineType)
        XCTAssertEqual(.HI_B, response.immunizationSchedules[4].vaccineType)
        XCTAssertEqual(.PCV_13, response.immunizationSchedules[5].vaccineType)
        XCTAssertEqual(.IPV, response.immunizationSchedules[6].vaccineType)
        XCTAssertEqual(.INFLUENZA, response.immunizationSchedules[7].vaccineType)
        XCTAssertEqual(.MMR, response.immunizationSchedules[8].vaccineType)
        XCTAssertEqual(.VAR, response.immunizationSchedules[9].vaccineType)
        XCTAssertEqual(.HEP_A, response.immunizationSchedules[10].vaccineType)
        XCTAssertEqual(.MENINGOCOCCAL, response.immunizationSchedules[11].vaccineType)
        XCTAssertEqual(.HPV, response.immunizationSchedules[12].vaccineType)
    }
    
    func test_givenDoseSatisfiesMultipleSchedules_noDoseContamination() {
        // TBD
    }
}
