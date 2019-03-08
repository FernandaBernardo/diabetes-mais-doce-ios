import Foundation

enum MealType {
    case breakfast
    case morningSnack
    case lunch
    case afternoonSnack
    case dinner
    case supper
    case dawn // ???? madrugada

    static func discoverMealType(date: Date = Date()) -> MealType {
        let hour = Calendar.current.component(.hour, from: date)
        switch hour {
        case 5..<10:
            return MealType.breakfast
        case 10..<12:
            return MealType.morningSnack
        case 12..<15:
            return MealType.lunch
        case 15..<18:
            return MealType.afternoonSnack
        case 18..<23:
            return MealType.dinner
        case 1..<5:
            return MealType.dawn
        default:
            return MealType.supper
        }
    }
}
