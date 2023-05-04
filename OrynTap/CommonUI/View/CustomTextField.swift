
import SwiftUI

struct CustomTextField: View {
    
    private var title: String
    private var text: Binding<String>
    private var prompt: String?
    private var isSecure: Bool
    
    init(title: String, text: Binding<String>, prompt: String? = nil, isSecure: Bool = false) {
        self.title = title
        self.text = text
        self.prompt = prompt
        self.isSecure = isSecure
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            if isSecure {
                SecureField(title, text: text)
                    .overlay(prompt == nil ? RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)) : RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color.red, style: StrokeStyle(lineWidth: 1.0)))
                    .cornerRadius(25)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
            } else  {
                TextField(title, text: text)
                    .overlay(prompt == nil ? RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)) : RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color.red, style: StrokeStyle(lineWidth: 1.0)))
                    .cornerRadius(25)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
            }
            
            if let prompt = prompt {
                Text(prompt)
                    .foregroundColor(.red)
                    .font(.caption)
                    .padding(.horizontal)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
