
import SwiftUI

struct ChooseAccountTypeView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Color("backgroundColor").ignoresSafeArea()
            Text("Choose your").font(Font.custom("SFProText-Bold", size: 34))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 100, leading: 32, bottom: 700, trailing: 25))
            Text("account type").font(Font.custom("SFProText-Bold", size: 34))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 100, leading: 32, bottom: 600, trailing: 32))
            Text("Choose the type of your account. Be careful,  to change it is impossible!")
                .font(Font.custom("SFProText-Semibold", size: 15))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 200, leading: 32, bottom: 585, trailing: 32))
            Group {
                Button(action: {
                    
                }) {
                    Text("I am a customer")
                        .font(Font.custom("SFProText-Semibold", size: 24))
                        .frame(width: 341, height: 172, alignment: .leading)
                        .foregroundColor(.black)
                }
                .tint(Color("backgroundColor"))
                .overlay(
                    RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0))
                )
                .buttonStyle (.borderedProminent)
                .controlSize (.large)
                .padding(EdgeInsets(top: 140, leading: 25, bottom: 200, trailing: 25))
            }
            
            Group {
                Button(action: {
                    
                }) {
                    Text("I am a Venue Owner")
                        .font(Font.custom("SFProText-Semibold", size: 24))
                        .frame(width: 341, height: 172, alignment: .leading)
                        .foregroundColor(.black)
                }
                .tint(Color("backgroundColor"))
                .overlay(
                    RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0))
                )
                .buttonStyle (.borderedProminent)
                .controlSize (.large)
                .padding(EdgeInsets(top: 580, leading: 25, bottom: 200, trailing: 25))
            }
            
            Button(action: {
               
            }) {
                Text("Confirm")
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

struct ChooseAccountTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseAccountTypeView()
    }
}
