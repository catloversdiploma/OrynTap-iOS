
import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
      return configuration
            .font(Font.custom("SFProText-Semibold", size: 16))
            .padding()
            .frame(height: 55)
            .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
            .autocorrectionDisabled()
            .textInputAutocapitalization(.never)
    }
}
