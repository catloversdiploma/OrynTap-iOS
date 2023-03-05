

import SwiftUI

struct SetUpProfileVuew: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var dateOfBirth: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color("backgroundColor").ignoresSafeArea()
            Text("Set up your").font(Font.custom("SFProText-Bold", size: 34))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 100, leading: 32, bottom: 700, trailing: 25))
            Text("Profile").font(Font.custom("SFProText-Bold", size: 34))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 100, leading: 32, bottom: 600, trailing: 32))
            Text("Last step! Create an account so you can che to tam(poka ne pridumal)")
                .font(Font.custom("SFProText-Semibold", size: 15))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 200, leading: 32, bottom: 585, trailing: 32))
            
            Group {
                TextField("First Name", text: $firstName)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(EdgeInsets(top: 280, leading: 32, bottom: 550, trailing: 32))
                
                TextField("Last Name", text: $lastName)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(EdgeInsets(top: 420, leading: 32, bottom: 550, trailing: 32))
                
                TextField("Date of Birth", text: $dateOfBirth)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(EdgeInsets(top: 560, leading: 32, bottom: 550, trailing: 32))
                Image(systemName: "calendar")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 560, leading: 320, bottom: 550, trailing: 32))
                    .frame(width: 30, height: 30, alignment: .leading)
                
                SecureField("Password", text: $password)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(EdgeInsets(top: 700, leading: 32, bottom: 550, trailing: 32))
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 700, leading: 320, bottom: 550, trailing: 32))
                    .frame(width: 30, height: 30, alignment: .leading)
                
                TextField("Confirm Password", text: $confirmPassword)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(EdgeInsets(top: 840, leading: 32, bottom: 550, trailing: 32))
                
            }
            
            Text("By creating an account, you acknowledge and agree to Terms of Use and Privacy Policy")
                .font(Font.custom("SFProText-Semibold", size: 15))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 850, leading: 32, bottom: 400, trailing: 32))
            
            Button(action: {
               
            }) {
                Text("Continue")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .frame(width: 300)
                    .foregroundColor(.white)
            }
            .tint(Color("mainColor"))
            .buttonStyle (.borderedProminent)
            .buttonBorderShape (.capsule)
            .controlSize (.large)
            .padding(EdgeInsets(top: 750, leading: 40, bottom: 80, trailing: 25))
        }
    }
}

struct SetUpProfileVuew_Previews: PreviewProvider {
    static var previews: some View {
        SetUpProfileVuew()
    }
}
