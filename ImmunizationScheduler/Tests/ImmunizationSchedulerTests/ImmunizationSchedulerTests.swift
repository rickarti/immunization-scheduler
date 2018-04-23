import XCTest
@testable import ImmunizationScheduler

final class ImmunizationSchedulerTests: XCTestCase {
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ImmunizationScheduler().text, "Hello, World!")
    }
    
    func testCreateRequest() {
        let request: ImmunizationScheduleRequest! = ImmunizationScheduleRequest(requestDate: Date(), birthDate: Date())
        XCTAssertNotNil(request)
        XCTAssertNotNil(request.requestDate)
        XCTAssertNotNil(request.birthDate)
        
    }


    static var allTests = [
        ("testExample", testExample),
        ("testCreateRequest", testCreateRequest),
    ]
}
