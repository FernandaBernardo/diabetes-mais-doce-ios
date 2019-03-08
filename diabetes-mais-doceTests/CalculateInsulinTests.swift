import XCTest
@testable import diabetes_mais_doce

class CalculateInsulinTests: XCTestCase {

    func testTotalInsulin() {
        let calculateInsulin = CalculateInsulin(pacient: Patient.mock(), meal: Meal.mock())
        XCTAssertEqual(2.11, calculateInsulin.totalInsulin, accuracy: 3)
    }
}
