import Foundation

struct Glycemia {
    let date: Date
    let mealType: MealType
    let value: Int
    let note: String

    func compare(to another: Glycemia) -> ComparisonResult {
        return self.date.compare(date)
    }

    /*
     public String toString() {
     return ParserTools.getParseDate(data.get(Calendar.DAY_OF_MONTH), data.get(Calendar.MONTH), data.get(Calendar.YEAR)) +
     " - " + ParserTools.getParseHour(data.get(Calendar.HOUR_OF_DAY), data.get(Calendar.MINUTE))
     + " - " + tipoRefeicao + " - " + valorGlicemia + " - " + observacao;
     }
     */
}
