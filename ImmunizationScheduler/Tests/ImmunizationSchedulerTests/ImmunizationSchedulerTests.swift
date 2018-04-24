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


    static var allTests = [
        ("testCreateRequest", testCreateRequest),
    ]
}
