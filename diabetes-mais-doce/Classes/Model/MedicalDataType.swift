import Foundation

public struct MedicalDataType {

    public enum DataType {
        case continued
        case correction
        case correctiveFactor
        case targetGlycemia
    }

    let text: String
    let dataType: DataType
}
