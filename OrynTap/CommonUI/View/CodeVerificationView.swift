
import SwiftUI

struct CodeVerificationView: View {
    @State var no1: String = ""
    @State var no2: String = ""
    @State var no3: String = ""
    @State var no4: String = ""
    @State private var goesTabBarViewPage: Bool = false
    @State private var registrationStatus: RegistrationStatus = .notStarted

       enum RegistrationStatus {
           case notStarted
           case inProgress
           case success
           case failure
       }
    
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
                    TextField("", text: $no1)
                        .font(Font.custom("SFProText-Semibold", size: 28))
                        .padding()
                        .frame(width:75, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                        
                    TextField("", text: $no2)
                        .font(Font.custom("SFProText-Semibold", size: 28))
                        .padding()
                        .frame(width:75, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                        
                    TextField("", text: $no3)
                        .font(Font.custom("SFProText-Semibold", size: 28))
                        .padding()
                        .frame(width:75, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                        
                    TextField("", text: $no4)
                        .font(Font.custom("SFProText-Semibold", size: 28))
                        .padding()
                        .frame(width:75, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0)))
                }
                .padding(.leading, 25)
                .overlay(registrationStatus == .success ? ToastView(message: "Registration Successful", duration: 0.5) : nil)
                  
            }
            NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true), isActive: $goesTabBarViewPage)
            {
                
                Button(action: {
                    registrationStatus = .success
//                    goesTabBarViewPage = true
                }) {
                    Text("Confirm")
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .frame(width: 320)
                        .frame(height: 30)
                        .foregroundColor(Color.white)
                }
                .tint(Color("mainColor"))
                .buttonStyle (.borderedProminent)
                .buttonBorderShape (.capsule)
                .controlSize(.large)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
            
            Button(action: {
                    goesTabBarViewPage = true
            }) {
                Text("")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .frame(width: 320)
                    .frame(height: 100)
                    .foregroundColor(Color.white)
            }
            .tint(Color("backgroundColor"))
            .buttonStyle (.borderedProminent)
            .buttonBorderShape (.capsule)
            .controlSize(.large)
            .padding(.leading, 20)
            .padding(.trailing, 20)
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

struct ToastView: View {
    let message: String
    let duration: TimeInterval

    @State private var isPresented = true

    var body: some View {
        VStack {
            Spacer()
            Text(message)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(8)
                .padding(.horizontal)
        }
        .opacity(isPresented ? 1 : 0)
        .animation(.easeInOut(duration: 0.5))
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: duration, repeats: false) { _ in
                dismiss()
            }
        }
    }

    func dismiss() {
        withAnimation {
            isPresented = false
        }
    }
}

struct CodeVerificationView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationView()
    }
}
