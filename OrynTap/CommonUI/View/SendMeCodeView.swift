

import SwiftUI

struct SendMeCodeView: View {
    @State var username: String = ""
    @StateObject private var loginData = LoginViewModel()
    @State private var goesToSendMeCodePage: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 160) {
            VStack(alignment: .leading, spacing:20) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Enter your Phone").font(Font.custom("SFProText-Bold", size: 34))
                        .foregroundColor(Color("mainColor"))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 25)
                        .padding(.top, 96)
                    Text("Number").font(Font.custom("SFProText-Bold", size: 34))
                        .foregroundColor(Color("mainColor"))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 25)
                    Text("We will send you a Verification code")
                        .font(Font.custom("SFProText-Semibold", size: 15))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 25)
                }
                
                
                CustomTextField(title: "Phone number", text: $loginData.phone, prompt: loginData.phonePrompt)
                    .onChange(of: loginData.phone) { newValue in
                        DispatchQueue.main.async {
                            loginData.phone = loginData.phone.formattedMask(text: loginData.phone, mask: "+X (XXX) XXX-XX-XX")
                        }
                    }
            }
            NavigationLink(destination: SendMeCodeView(), isActive: $goesToSendMeCodePage)
            {
                Button(action: {
                    goesToSendMeCodePage = true
                }) {
                    Text("Send me the code")
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
          .textFieldStyle(CustomTextFieldStyle())
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SendMeCodeView()
    }
}
