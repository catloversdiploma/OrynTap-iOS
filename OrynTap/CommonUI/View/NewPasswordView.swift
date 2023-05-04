

import SwiftUI

struct NewPasswordView: View {
    @State private var newPassword: String = ""
    @State private var confirmPassword: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Enter new").font(Font.custom("SFProText-Bold", size: 34))
                    .foregroundColor(Color("mainColor"))
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 25)
                    .padding(.top, 96)
                Text("Password").font(Font.custom("SFProText-Bold", size: 34))
                    .foregroundColor(Color("mainColor"))
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 25)
            }
           
            VStack(alignment: .leading, spacing: 25) {
                SecureField("Password", text: $newPassword)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
            }
            
            Button(action: {
                
            }) {
                Text("Confirm")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .frame(width: 300)
                    .foregroundColor(.white)
            }
            .tint(Color("mainColor"))
            .buttonStyle (.borderedProminent)
            .buttonBorderShape (.capsule)
            .controlSize (.large)
            .padding(EdgeInsets(top: 290, leading: 25, bottom: 40, trailing: 25))
            
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
          )
          .background(Color("backgroundColor"))
    }
}

struct NewPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        NewPasswordView()
    }
}
