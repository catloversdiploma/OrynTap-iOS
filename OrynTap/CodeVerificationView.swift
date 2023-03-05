
import SwiftUI

struct CodeVerificationView: View {
    @State var code: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 160) {
            
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Confirm your").font(Font.custom("SFProText-Bold", size: 34))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 25)
                        .padding(.top, 96)
                    Text("Number").font(Font.custom("SFProText-Bold", size: 34))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 25)
                    Text("Enter the 4-digit code we sent to your phone number ending in 7777")
                        .font(Font.custom("SFProText-Semibold", size: 15))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 25)
                }
                HStack(spacing: 16) {
                    TextField("", text: $code)
                        .font(Font.custom("SFProText-Semibold", size: 28))
                        .padding()
                        .frame(width:75, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                        
                    TextField("", text: $code)
                        .font(Font.custom("SFProText-Semibold", size: 28))
                        .padding()
                        .frame(width:75, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                        
                    TextField("", text: $code)
                        .font(Font.custom("SFProText-Semibold", size: 28))
                        .padding()
                        .frame(width:75, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                        
                    TextField("", text: $code)
                        .font(Font.custom("SFProText-Semibold", size: 28))
                        .padding()
                        .frame(width:75, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                }.padding(.leading, 25)
                    
            }
            
            Button(action: {
                
            }) {
                Text("Confirm")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .frame(width: 316)
                    .frame(height: 55)
                    .foregroundColor(Color.white)
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

struct CodeVerificationView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationView()
    }
}
