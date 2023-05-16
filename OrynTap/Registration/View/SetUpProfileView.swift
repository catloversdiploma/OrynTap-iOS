

import SwiftUI
import iPhoneNumberField

struct SetUpProfileView: View {
    @State private var goesToSendCodePage: Bool = false
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var dateOfBirth: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var isEditing: Bool = true
    @State private var borderColor = Color(.lightGray)
    @State private var isEditingChanged = false
    @State private var isEditingChanged2 = false
    
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
                iPhoneNumberField("Phone number", text: $viewModel.user.phone, isEditing: $isEditing)
                    .prefixHidden(false)
                    .maximumDigits(10)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(isEditing ? Color("mainColor") : borderColor, style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                TextField("First Name", text: self.$viewModel.user.lastName, onEditingChanged: { isEditingChanged in
                    self.isEditingChanged = isEditingChanged
                })
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(isEditingChanged ? Color("mainColor") : borderColor, style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                TextField("Last Name", text: $dateOfBirth, onEditingChanged: { isEditingChanged in
                    self.isEditingChanged2 = isEditingChanged
                })
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(isEditingChanged2 ? Color("mainColor") : borderColor, style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                SecureField("Password", text: $viewModel.user.password)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(borderColor, style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(borderColor, style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                Text("By creating an account, you acknowledge and agree to Terms of Use and Privacy Policy")
                    .font(Font.custom("SFProText-Semibold", size: 15))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 25, leading: 25, bottom: 25, trailing: 25))
                    
            }
            NavigationLink(destination: SendMeCodeView(), isActive: $goesToSendCodePage)
            {
                Button(action: {
                    goesToSendCodePage = true
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
            }
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
