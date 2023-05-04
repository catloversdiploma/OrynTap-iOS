

import SwiftUI
import iPhoneNumberField

struct LoginView: View {
    @StateObject private var loginData = LoginViewModel()
    @State private var goesToMainPage: Bool = false
    @State private var goesToSignUpPage: Bool = false
    @State private var goesToNewPasswordPage: Bool = false
    
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
                CustomTextField(title: "Phone number", text: $loginData.phone, prompt: loginData.phonePrompt)
                    .onChange(of: loginData.phone) { newValue in
                        DispatchQueue.main.async {
                            loginData.phone = loginData.phone.formattedMask(text: loginData.phone, mask: "+X (XXX) XXX-XX-XX")
                        }
                    }
                CustomTextField(title: "Password", text: $loginData.password, prompt: loginData.passwordPrompt, isSecure: true)
                
                NavigationLink(destination: NewPasswordView(), isActive: $goesToNewPasswordPage)
                {
                    Button(action: {
                        goesToNewPasswordPage = true
                    }) {
                        Text("Forgot password?")
                            .font(Font.custom("SFProText-Semibold", size: 15))
                            .foregroundColor(Color("mainColor"))
                            .frame(height: 40)
                            .padding(.leading, 232)
                    }
                }
            }.textFieldStyle(CustomTextFieldStyle())
            
            VStack(alignment: .leading, spacing: 10) {
                NavigationLink(destination: TabBarView().navigationBarBackButtonHidden(true), isActive: $goesToMainPage)
                {
                    Button(action: {
                        loginData.login { success in
                            if success {
                                goesToMainPage = true
                            }
                        }
                        
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
                }
            }
            NavigationLink(destination: ChooseAccountTypeView(), isActive: $goesToSignUpPage)
            {
                Button(action: {
                    goesToSignUpPage = true
                }) {
                    Text("Don't have an account?")
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .foregroundColor(Color("mainColor"))
                        .frame(height:40)
                        .padding(.leading, 184)
                }
            }
            
            NavigationLink(destination: ChooseAccountTypeView(), isActive: $goesToSignUpPage)
            {
                Button(action: {
                    goesToSignUpPage = true
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
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
