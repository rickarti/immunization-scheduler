import XCTest
@testable import ImmunizationScheduler

class HepADoseSchedulerTests: XCTestCase {


    func test_noDosesGiven_returnTwoDueDoses() {

        let request: ImmunizationScheduleRequest = ImmunizationScheduleRequestBuilder(
            birthDate: date(1, 1, 2020),
            requestDate: date(11, 15, 2020)).build()
        
        XCTAssertEqual(date(1, 1, 2020), request.birthDate)
        XCTAssertEqual(date(11, 15, 2020), request.requestDate)
        
        let hepADoseScheduler = HepADoseScheduler()
        let hepASchedule: ImmunizationSchedule = hepADoseScheduler.immunizationSchedule(request: request)[0]
        XCTAssertEqual(hepASchedule.vaccineType, VaccineType.HEP_A)
        XCTAssertEqual(2, hepASchedule.scheduledDoses.count)
        print("Dose 0 -----------------------------------")
        print(hepASchedule.scheduledDoses[0])
        print("Dose 1 -----------------------------------")
        print(hepASchedule.scheduledDoses[1])
        assertDose(hepASchedule.scheduledDoses[0], .firstDose, start:(1,1,2021), end:(1,1,2022), .HEP_A)
        assertDose(hepASchedule.scheduledDoses[1], .secondDose , start:(7,1,2021), end:(7,1,2022), .HEP_A)

//            assertDose(hepADoses.get(0), DoseType.FIRST_DOSE, "1/1/2017", "1/1/2018", "1/1/2017", null, VaccineType.HEP_A, false);
//            assertDose(hepADoses.get(1), DoseType.SECOND_DOSE, "7/1/2017", "7/1/2018", "7/1/2017", null, VaccineType.HEP_A, false);
        
        
        let cal = Calendar(identifier: .gregorian)
        let dateComponents = DateComponents(calendar: cal, timeZone: .current  , year: 2020, month: 2, day: 29)
        
        
        
        let birthDate: Date = dateComponents.date!
        
        print("Birth Date: \(birthDate)")
        
        print("Birth Date description: \(birthDate.description)")
        
        
        let dateFormat = DateFormatter()
        dateFormat.locale = Locale(identifier: "en_US_POSIX")
        dateFormat.dateFormat = "M/d/y"
        let requestDate = dateFormat.date(from: "11/15/2020")!
        
        print("Request Date: \(requestDate)")
        
        print("Request Date description: \(requestDate.description)")
    }
    
    func assertDose(_ dose: DueDose, _ doseType: DoseType, start:(m:Int, d:Int, y:Int), end:(m:Int, d:Int, y:Int), _ vaccineType: VaccineType) {

        XCTAssertEqual(dose.doseType, doseType)
        XCTAssertEqual(dose.vaccineType, vaccineType)
        XCTAssertEqual(date(start), dose.earliestRecommendedDueDate)
        XCTAssertEqual(date(end), dose.latestRecommendedDueDate)
    }
    

}

