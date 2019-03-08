import Foundation

struct Meal {

//    let text: String
//    let excelColumnIndex: Int

//    let id: Int
    var foods: [FoodAmount] = [FoodAmount]()
    let type: MealType
    let date: Date // necessário ?

    var totalCHO: Float {
        return self.foods.map({ $0.getTotalCarbo() }).reduce(0, +)
    }

    /*
     public String toString() {
     return ParserTools.getParseDate(data)
     + " - " + ParserTools.getParseHour(data) + " - " + tipoRefeicao;
     }
     */
}

extension Meal {
    static func mock() -> Meal {
        let sweetPotatofood = Food(name: "Batata doce", carbohydrate: 20, unitMeasurement: "g")
        let eggFood = Food(name: "Ovo", carbohydrate: 1.1, unitMeasurement: "g")
        let foods = [FoodAmount(food: sweetPotatofood, amount: 1), FoodAmount(food: eggFood, amount: 1)]

        return Meal(foods: foods, type: .breakfast, date: Date())
    }
}
