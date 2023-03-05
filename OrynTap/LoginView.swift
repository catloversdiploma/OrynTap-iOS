

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float = 0
    @State private var showSignUpView: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .leading) {
                Color("mainColor").ignoresSafeArea()
                Circle()
                    .scale(1.9)
                    .foregroundColor(.white.opacity(0.29))
                Circle()
                    .scale(1.7)
                    .foregroundColor(Color("backgroundColor"))
                Group {
                    Text("Welcome to").font(Font.custom("SFProText-Bold", size: 34))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 150, leading: 32, bottom: 700, trailing: 25))
                    Text("OrynTap!").font(Font.custom("SFProText-Bold", size: 34))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 135, leading: 32, bottom: 600, trailing: 32))
                    
                    TextField("Phone number", text: $username)
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .padding()
                        .frame(height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                        .padding(EdgeInsets(top: 280, leading: 32, bottom: 550, trailing: 32))
                    Image(systemName: "phone")
                        .foregroundColor(.gray)
                        .padding(EdgeInsets(top: 280, leading: 320, bottom: 550, trailing: 32))
                        .frame(width: 30, height: 30, alignment: .leading)
                    
                    SecureField("Password", text: $password)
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .padding()
                        .frame(height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                        .padding(EdgeInsets(top: 300, leading: 32, bottom: 400, trailing: 32))
                    Image(systemName: "lock")
                        .foregroundColor(.gray)
                        .padding(EdgeInsets(top: 300, leading: 325, bottom: 400, trailing: 32))
                        .frame(width: 30, height: 30, alignment: .leading)
                }
                
                Group {
                Button(action: {
                    
                }) {
                    Text("Forgot password?")
                        .font(Font.custom("SFProText-Semibold", size: 15))
                        .foregroundColor(Color("mainColor"))
                        .padding(EdgeInsets(top: 380, leading: 224, bottom: 380, trailing: 32))
                        .frame(height: 40)
                }
                
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
                    .padding(EdgeInsets(top: 400, leading: 25, bottom: 200, trailing: 25))
                
                    Button(action: {
                        
                    }) {
                        Text("Don't have an account?")
                            .font(Font.custom("SFProText-Semibold", size: 16))
                            .foregroundColor(Color("mainColor"))
                            .padding(EdgeInsets(top: 500, leading: 100, bottom: 150, trailing: 100))
                            .frame(height:40)
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 25).stroke(Color("mainColor"), lineWidth: 1)
                        )
                        .padding(EdgeInsets(top: 600, leading: 25, bottom: 100, trailing: 25))
                }
            }
        }.navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
