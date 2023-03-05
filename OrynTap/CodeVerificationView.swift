
import SwiftUI

struct CodeVerificationView: View {
    @State var code: String = ""
    var body: some View {
        ZStack(alignment: .leading) {
            Color("mainColor").ignoresSafeArea()
            Circle()
                .scale(1.9)
                .foregroundColor(.white.opacity(0.29))
            Circle()
                .scale(1.7)
                .foregroundColor(Color("backgroundColor"))
            Text("Confirm your").font(Font.custom("SFProText-Bold", size: 34))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 150, leading: 32, bottom: 700, trailing: 25))
            Text("Number").font(Font.custom("SFProText-Bold", size: 34))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 135, leading: 32, bottom: 600, trailing: 32))
            Text("Enter the 4-digit code we sent to your phone number ending in 7777")
                .font(Font.custom("SFProText-Semibold", size: 15))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 250, leading: 32, bottom: 585, trailing: 32))
            Group {
                TextField("", text: $code)
                    .font(Font.custom("SFProText-Semibold", size: 28))
                    .padding()
                    .frame(width:75, height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(EdgeInsets(top: 300, leading: 32, bottom: 500, trailing: 32))
                TextField("", text: $code)
                    .font(Font.custom("SFProText-Semibold", size: 28))
                    .padding()
                    .frame(width:75, height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(EdgeInsets(top: 300, leading: 120, bottom: 500, trailing: 32))
                TextField("", text: $code)
                    .font(Font.custom("SFProText-Semibold", size: 28))
                    .padding()
                    .frame(width:75, height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(EdgeInsets(top: 300, leading: 210, bottom: 500, trailing: 32))
                TextField("", text: $code)
                    .font(Font.custom("SFProText-Semibold", size: 28))
                    .padding()
                    .frame(width:75, height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(EdgeInsets(top: 300, leading: 300, bottom: 500, trailing: 32))
            }
            
            Button(action: {
                
            }) {
                Text("Confirm")
                    .font(Font.custom("SFProText-Regular", size: 16))
                    .frame(width: 300)
                    .foregroundColor(Color.white)
            }
            .tint(Color("mainColor"))
            .buttonStyle (.borderedProminent)
            .buttonBorderShape (.capsule)
            .controlSize (.large)
            .padding(EdgeInsets(top: 400, leading: 25, bottom: 300, trailing: 25))
        }
    }
}

struct CodeVerificationView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationView()
    }
}
