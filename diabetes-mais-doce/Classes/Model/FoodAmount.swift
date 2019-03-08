import Foundation

public struct FoodAmount {
    let food: Food
    let amount: Float

    public func getTotalCarbo() -> Float {
        return self.food.carbohydrate * self.amount
    }
}
