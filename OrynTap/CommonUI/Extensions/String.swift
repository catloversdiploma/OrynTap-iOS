
import Foundation

extension String {
    func formattedMask(text: String, mask: String?) -> String {
        let cleanPhoneNumber = text.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        var result = ""
        var index = cleanPhoneNumber.startIndex
        if let mask = mask {
            for ch in mask where index < cleanPhoneNumber.endIndex {
                if ch == "X" {
                    result.append(cleanPhoneNumber[index])
                    index = cleanPhoneNumber.index(after: index)
                } else {
                    result.append(ch)
                }
            }
        }
        return result
    }
    func removeExtraCharacters(text: String) -> String {
        var cleanPhoneNumber = text.replacingOccurrences(of: "-", with: "")
        var text1 = cleanPhoneNumber.replacingOccurrences(of: " ", with: "")
        var text2 = text1.replacingOccurrences(of: "(", with: "")
        var text3 = text2.replacingOccurrences(of: ")", with: "")
        return text3
    }
}
