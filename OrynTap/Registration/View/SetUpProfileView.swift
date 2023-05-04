

import SwiftUI

struct SetUpProfileView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var dateOfBirth: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    @StateObject private var viewModel = RegistrationViewModel()
    
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
                TextField("Phone number", text: self.$viewModel.user.phone)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    
                
                TextField("First Name", text: self.$viewModel.user.lastName)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    
                
                TextField("Last Name", text: $dateOfBirth)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                SecureField("Password", text: $viewModel.user.password)
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
                
                Text("By creating an account, you acknowledge and agree to Terms of Use and Privacy Policy")
                    .font(Font.custom("SFProText-Semibold", size: 15))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 25, leading: 25, bottom: 25, trailing: 25))
                    
            }
            
            Button(action: {
                viewModel.register()
            }) {
                Text("Continue")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .frame(width: 320)
                    .frame(height: 30)
                    .foregroundColor(.white)
            }
            .tint(Color("mainColor"))
            .buttonStyle (.borderedProminent)
            .buttonBorderShape (.capsule)
            .controlSize(.large)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
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

struct SetUpProfileView_Previews: PreviewProvider {
    static var previews: some View {
        SetUpProfileView()
    }
}
