
import SwiftUI

struct WelcomeView: View {
    
    @State private var goesToOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 100) {
                Text("Welcome to OrynTap!").font(Font.custom("SFProText-Bold", size: 24))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                    .padding(.top, 104)
                Spacer()
                Text("Lorem ipsum dolor sit amet,  adipiscing").font(Font.custom("SFProText-Regular", size: 38))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                NavigationLink(destination: OnboardingView().navigationBarBackButtonHidden(true), isActive: $goesToOnboarding)
                {
                    Button(action: {
                        goesToOnboarding = true
                    }) {
                        Text("Let's go")
                            .font(Font.custom("SFProText-Regular", size: 16))
                            .frame(width: 300)
                            .foregroundColor(Color("mainColor"))
                    }
                    .tint(.white)
                    .buttonStyle (.borderedProminent)
                    .buttonBorderShape (.capsule)
                    .controlSize (.large)
                    .shadow(color: Color.black.opacity(0.3), radius: 10.0, x: 0, y: 2)
                    .padding(.trailing, 25)
                    .padding(.leading, 25)
                    .padding(.bottom, 45)
                }
                .navigationTitle("")
            }.background(
                LinearGradient(gradient: Gradient(colors: [.indigo, .purple]), startPoint: .top, endPoint: .bottom)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
