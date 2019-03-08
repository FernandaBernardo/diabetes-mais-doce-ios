import XCTest
@testable import diabetes_mais_doce

class MealTests: XCTestCase {

    var calendar: Calendar!
    var components: DateComponents!

    override func setUp() {
        self.calendar = Calendar.current
        self.components = DateComponents()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCorrectMealType() {
        self.components.hour = 5
        XCTAssertEqual(MealType.breakfast, MealType.discoverMealType(date: self.calendar.date(from: self.components)!))

        self.components.hour = 10
        XCTAssertEqual(MealType.morningSnack, MealType.discoverMealType(date: self.calendar.date(from: self.components)!))

        self.components.hour = 12
        XCTAssertEqual(MealType.lunch, MealType.discoverMealType(date: self.calendar.date(from: self.components)!))

        self.components.hour = 15
        XCTAssertEqual(MealType.afternoonSnack, MealType.discoverMealType(date: self.calendar.date(from: self.components)!))

        self.components.hour = 18
        XCTAssertEqual(MealType.dinner, MealType.discoverMealType(date: self.calendar.date(from: self.components)!))

        self.components.hour = 1
        XCTAssertEqual(MealType.dawn, MealType.discoverMealType(date: self.calendar.date(from: self.components)!))

        self.components.hour = 0
        XCTAssertEqual(MealType.supper, MealType.discoverMealType(date: self.calendar.date(from: self.components)!))
    }
}
