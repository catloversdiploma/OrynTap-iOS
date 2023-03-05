

import SwiftUI

struct SignUpView: View {
    @State var username: String = ""
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
                
                
                TextField("Phone number", text: $username)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
            }
            
            Button(action: {
                
            }) {
                Text("Send me the code")
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
