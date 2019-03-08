import Foundation

struct Food {

    let name: String
    let carbohydrate: Float
    let unitMeasurement: String
    // let check: Bool

    func getCarbohydratePerValue(value: Float) -> Float {
        return value * self.carbohydrate
    }
}
