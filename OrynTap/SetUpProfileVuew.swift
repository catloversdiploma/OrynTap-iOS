

import SwiftUI

struct SetUpProfileVuew: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var dateOfBirth: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Set up your").font(Font.custom("SFProText-Bold", size: 34))
                    .foregroundColor(Color("mainColor"))
                    .multilineTextAlignment(.leading)
                    .padding(.top, 28)
                    .padding(.leading, 25)
                Text("Profile").font(Font.custom("SFProText-Bold", size: 34))
                    .foregroundColor(Color("mainColor"))
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 25)
                Text("Last step! Create an account so you can che to tam(poka ne pridumal)")
                    .font(Font.custom("SFProText-Semibold", size: 15))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
            }
            
                
            VStack(alignment: .leading, spacing: 15) {
                TextField("First Name", text: $firstName)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    
                
                TextField("Last Name", text: $lastName)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    
                
                TextField("Date of Birth", text: $dateOfBirth)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                SecureField("Password", text: $password)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                TextField("Confirm Password", text: $confirmPassword)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                Text("By creating an account, you acknowledge and agree to Terms of Use and Privacy Policy")
                    .font(Font.custom("SFProText-Semibold", size: 15))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 25, leading: 25, bottom: 25, trailing: 25))
                    
            }
            
            Button(action: {
               
            }) {
                Text("Continue")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .frame(width: 316)
                    .frame(height: 55)
                    .foregroundColor(.white)
            }
            .tint(Color("mainColor"))
            .buttonStyle (.borderedProminent)
            .buttonBorderShape (.capsule)
            .padding(.leading, 25)
            .padding(.trailing, 25)
            
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

struct SetUpProfileVuew_Previews: PreviewProvider {
    static var previews: some View {
        SetUpProfileVuew()
    }
}
