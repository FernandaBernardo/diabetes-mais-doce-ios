import Foundation

struct MedicalData {
    
//    let id: Int
    let breakfast: Float?
    let morningSnack: Float?
    let lunch: Float?
    let afternoonSnack: Float?
    let dinner: Float?
    let supper: Float?
    let dawn: Float?
//    let type: MedicalDataType
//    private TipoDadoMedico tipo;

    // refactoring
    func get(type: MealType) -> Float? {

        switch type {

        case .breakfast:
            return self.breakfast

        case .morningSnack:
            return self.morningSnack

        case .afternoonSnack:
            return self.afternoonSnack

        case .lunch:
            return self.lunch

        case .dinner:
            return self.dinner

        case .supper:
            return self.supper

        case .dawn:
            return self.dawn
        }
    }
}

extension MedicalData {
    static func mock() -> MedicalData {

        return MedicalData(breakfast: 10,
                           morningSnack: nil,
                           lunch: nil,
                           afternoonSnack: nil,
                           dinner: nil,
                           supper: nil,
                           dawn: nil)
    }
}
