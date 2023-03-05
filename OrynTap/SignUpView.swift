

import SwiftUI

struct SignUpView: View {
    @State var username: String = ""
    var body: some View {
        ZStack(alignment: .leading) {
            Color("mainColor").ignoresSafeArea()
            Circle()
                .scale(1.9)
                .foregroundColor(.white.opacity(0.29))
            Circle()
                .scale(1.7)
                .foregroundColor(Color("backgroundColor"))
            Text("Enter your Phone").font(Font.custom("SFProText-Bold", size: 34))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 150, leading: 32, bottom: 700, trailing: 25))
            Text("Number").font(Font.custom("SFProText-Bold", size: 34))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 135, leading: 32, bottom: 600, trailing: 32))
            Text("We will send you a Verification code")
                .font(Font.custom("SFProText-Semibold", size: 15))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 220, leading: 32, bottom: 585, trailing: 32))
            TextField("Phone number", text: $username)
                .font(Font.custom("SFProText-Semibold", size: 16))
                .padding()
                .frame(height: 55)
                .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                .padding(EdgeInsets(top: 280, leading: 32, bottom: 550, trailing: 32))
            Button(action: {
                
            }) {
                Text("Send me the code")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .frame(width: 300)
                    .foregroundColor(.white)
            }
            .tint(Color("mainColor"))
            .buttonStyle (.borderedProminent)
            .buttonBorderShape (.capsule)
            .controlSize (.large)
            .padding(EdgeInsets(top: 300, leading: 25, bottom: 200, trailing: 25))
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
