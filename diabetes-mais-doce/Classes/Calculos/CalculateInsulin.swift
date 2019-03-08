import Foundation

struct CalculateInsulin {
    let pacient: Patient
    let meal: Meal

    var totalInsulin: Float {
        let totalCHO = self.meal.totalCHO
        let correction = self.pacient.insulinCorrection
        let typeMeal = self.meal.type
        let correctionValue = correction.get(type: typeMeal) ?? 0

        let totalInsulina = totalCHO / correctionValue
        return totalInsulina
    }
}
