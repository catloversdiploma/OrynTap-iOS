
import SwiftUI

struct OnboardingView: View {
    @AppStorage("currentPage") var currentPage = 1
    var body: some View {
        if currentPage > totalPages {
            LoginView()
        } else {
            WalkthroughScreen()
        }
    }
}

struct WalkthroughScreen: View {
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        // For slide animation
        ZStack {
            
            // Changing between screens
            
            if currentPage == 1 {
                ScreensView(title: "Enjoy every stage of celebration ", subtitle: "Spend less time searching for a venue and focus on preparation for your day X", image: "image6", bgColor: Color("5Color"))
                    .transition(.scale)
            }
            if currentPage == 2 {
                ScreensView(title: "Replace calls with powerful searching ", subtitle: "Customized filters will save you from hour of clarifying calls", image: "image5", bgColor: Color("fourthColor"))
                    .transition(.scale)
            }
            if currentPage == 3 {
                ScreensView(title: "Entertainment is included", subtitle: "See entertainment options provided by venue owner for additional price", image: "image4", bgColor: Color("6Color"))
                    .transition(.scale)
            }
            
        }
        .overlay(
            Button(action: {
                // changing views with animation
                withAnimation(.easeInOut) {
                    // checking
                    if currentPage <= totalPages {
                        currentPage += 1
                        
                    } else {
                        // For App testing only
                        currentPage = 1
                        
                    }
                }
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color.black)
                    .frame(width: 60, height: 60)
                    .background(Color.white)
                    .clipShape(Circle())
                
                // Circular slider
                
                    .overlay(
                    
                        ZStack {
                            Circle()
                                .stroke(Color.black.opacity(0.04), lineWidth: 4)
                            
                            Circle()
                                .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                                .stroke(Color.white, lineWidth: 4)
                                .rotationEffect(.init(degrees: -90))
                        }
                            .padding(-15)
                    )
            })
            .padding(.bottom, 20)
            
            , alignment: .bottom
        )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct ScreensView: View {
    var title: String
    var subtitle: String
    var image: String
    var bgColor: Color
    
    @AppStorage("currentPage") var currentPage = 1

    var body: some View {
        VStack(spacing: 20) {
            
            HStack {
                
                if currentPage == 1 {
                    Text("Hello Member!")
                        .font(Font.custom("SFProText-Bold", size: 22))
                        .kerning(1.4)
                } else {
                    Button(action: {
                        withAnimation(.easeInOut) {
                            currentPage -= 1
                            
                        }
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                        
                    })
                }
                
                Spacer()
                
                Button (action: {
                    withAnimation(.easeInOut) {
                        currentPage = 4
                    }
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                        .foregroundColor(Color("mainColor"))
                })
            }
            .foregroundColor(.black)
            .padding()
            
            Spacer(minLength: 0)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(title)
                .font(Font.custom("SFProText-Bold", size: 26))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
            
            Text(subtitle)
                .font(Font.custom("SFProText-Light", size: 20))
                .multilineTextAlignment(.center)
                .kerning(1.3)
                .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
            
            //Minimum spacing When Phone is reducing
            Spacer(minLength: 120)
            
        }
        .background(bgColor.cornerRadius(10).ignoresSafeArea())
    }
}

// total pages
var totalPages = 3
