import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ImmunizationSchedulerTests.allTests),
    ]
}
#endif