
import SwiftUI

struct ChooseAccountTypeView: View {
    @StateObject private var viewModel = RegistrationViewModel()
    @State private var goesToSetupProfile: Bool = false
    @State private var goesToVenueRegistrationPage: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 42) {
            VStack(alignment: .leading, spacing: 10){
                Text("Choose your").font(Font.custom("SFProText-Bold", size: 34))
                    .foregroundColor(Color("mainColor"))
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 25)
                    .padding(.top, 96)
                Text("account type").font(Font.custom("SFProText-Bold", size: 34))
                    .foregroundColor(Color("mainColor"))
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 25)
                Text("Choose the type of your account. Be careful,  to change it is impossible!")
                    .font(Font.custom("SFProText-Semibold", size: 15))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 25)
            }
            
            VStack(alignment: .leading, spacing: 22) {
                NavigationLink(destination: SetUpProfileView(), isActive: $goesToSetupProfile)
                {
                    Button(action: {
                        goesToSetupProfile = true
                    }) {
                        Text("I am a customer")
                            .font(Font.custom("SFProText-Semibold", size: 24))
                            .frame(width: 300, height: 136, alignment: .leading)
                            .foregroundColor(.black)
                    }
                    .tint(Color("backgroundColor"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0))
                    )
                    .buttonStyle (.borderedProminent)
                    .controlSize (.large)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    
                }
                NavigationLink(destination: VenueRegistrationViewUpdated(), isActive: $goesToVenueRegistrationPage)
                {
                    Button(action: {
                        goesToVenueRegistrationPage = true
                    }) {
                        Text("I am a Venue Owner")
                            .font(Font.custom("SFProText-Semibold", size: 24))
                            .frame(width: 300, height: 136, alignment: .leading)
                            .foregroundColor(.black)
                    }
                    .tint(Color("backgroundColor"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0))
                    )
                    .buttonStyle (.borderedProminent)
                    .controlSize (.large)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                }
            }
                
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

struct ChooseAccountTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseAccountTypeView()
    }
}
