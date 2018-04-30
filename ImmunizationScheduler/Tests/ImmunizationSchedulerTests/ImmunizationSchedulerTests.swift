import XCTest
@testable import ImmunizationScheduler

final class ImmunizationSchedulerTests: XCTestCase {
    
    func testCreateRequest() {
        let request: ImmunizationScheduleRequest! = ImmunizationScheduleRequest(requestDate: Date(), birthDate: Date(), givenDoses: [GivenDose]())
        XCTAssertNotNil(request)
        XCTAssertNotNil(request.requestDate)
        XCTAssertNotNil(request.birthDate)
        XCTAssertNotNil(request.givenDoses)
    }
    
    func testSchedule() {
        let immunizationScheduler = ImmunizationScheduler()
        let request: ImmunizationScheduleRequest = ImmunizationScheduleRequest(requestDate: Date(), birthDate: Date(), givenDoses: [GivenDose]())
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


    static var allTests = [
        ("testCreateRequest", testCreateRequest),
    ]
}
