

import SwiftUI
import iPhoneNumberField

struct LoginView: View {
    @State var loginData = LoginViewModel()
    @State var isEditing: Bool = false
    @State private var password: String = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float = 0
    @State private var showSignUpView: Bool = false
    
    var body: some View {
            VStack(alignment: .leading, spacing: 40) {
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Welcome to").font(Font.custom("SFProText-Bold", size: 34))
                        .foregroundColor(Color("mainColor"))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 32)
                        .padding(.top, 96)
                    Text("OrynTap!").font(Font.custom("SFProText-Bold", size: 34))
                        .foregroundColor(Color("mainColor"))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 32)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    iPhoneNumberField("Phone number", text: loginData.$phoneNumber, isEditing: $isEditing)
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
                    
                    
                        Button(action: {
                            
                        }) {
                            Text("Forgot password?")
                                .font(Font.custom("SFProText-Semibold", size: 15))
                                .foregroundColor(Color("mainColor"))
                                .frame(height: 40)
                                .padding(.leading, 232)
                        }
                }
                    
                VStack(alignment: .leading, spacing: 10) {
                    Button(action: {
                        
                    }) {
                        Text("Sign in")
                            .font(Font.custom("SFProText-Semibold", size: 16))
                            .frame(width: 300)
                            .foregroundColor(.white)
                    }
                    .tint(Color("mainColor"))
                    .buttonStyle (.borderedProminent)
                    .buttonBorderShape (.capsule)
                    .controlSize (.large)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                    Button(action: {
                        
                    }) {
                        Text("Don't have an account?")
                            .font(Font.custom("SFProText-Semibold", size: 16))
                            .foregroundColor(Color("mainColor"))
                            .frame(height:40)
                            .padding(.leading, 184)
                    }
                
                }
                
                Button(action: {
                    showSignUpView = true
                }) {
                    Text("Sign up")
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .frame(width: 300)
                        .foregroundColor(Color("mainColor"))
                }
                .tint(Color("backgroundColor"))
                .controlSize(.large)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .overlay(
                    RoundedRectangle(cornerRadius: 25).stroke(Color("mainColor"), lineWidth: 1)
                )
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
