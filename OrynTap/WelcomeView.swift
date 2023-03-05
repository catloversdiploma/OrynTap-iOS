
import SwiftUI

struct WelcomeView: View {
    
    @State private var goesToOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Rectangle().fill(Gradient(colors: [.indigo, .purple])).ignoresSafeArea()
                Text("Welcome to OrynTap!").font(Font.custom("SFProText-Bold", size: 24))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 112, leading: 25, bottom: 700, trailing: 25))
                Text("Lorem ipsum dolor sit amet,  adipiscing").font(Font.custom("SFProText-Regular", size: 38))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 550, leading: 25, bottom: 144, trailing: 25))
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
                    .padding(EdgeInsets(top: 750, leading: 25, bottom: 80, trailing: 25))
                    .shadow(color: Color.black.opacity(0.3), radius: 10.0, x: 0, y: 2)
                }
                .navigationTitle("")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
