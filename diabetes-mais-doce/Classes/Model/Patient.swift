import Foundation

struct Patient {
    
    enum Sex: String {
        case male
        case female
    }
    
    enum TypeDiabetes: String {
        case type1
        case type2
        case gestational
        case preDiabetes
    }
    
    let id: Int
    let name: String
    let idade: Int
    let weight: Double
    let height: Double
    let sex: Sex
    let typeDiabetes: TypeDiabetes
    let insulinContinuous: MedicalData?
    let insulinCorrection: MedicalData
    let bloodGlucose: MedicalData?
    let correctionFactor: MedicalData?
}

extension Patient {
    static func mock() -> Patient {
        return Patient(id: 0,
                       name: "Ned Stark",
                       idade: 59,
                       weight: 85,
                       height: 1.79,
                       sex: .male,
                       typeDiabetes: .type1,
                       insulinContinuous: nil,
                       insulinCorrection: MedicalData.mock(),
                       bloodGlucose: nil,
                       correctionFactor: nil)
    }
}
