
import SwiftUI

struct TabBarView: View {
    @State var selectedTab = "house"
    var tabs = ["house", "heart", "newspaper", "person"]
    
    var body: some View {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
                HomeView()
                
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tag("house")
                    FavouritesView()
                        .tag("heart")
                    RequestsView()
                        .tag("newspaper")
                    ProfileView()
                        .tag("person")
                }
                
                HStack(spacing: 0) {
                    ForEach(tabs,id: \.self) { image in
                        TabBarButton(image: image, selectedTab: $selectedTab)
                        if image != tabs.last {
                            Spacer(minLength: 0)
                        }
                    }
                }
                .frame(height: 48)
                .padding(.horizontal, 25)
                .padding(.vertical, 5)
                .background(Color.white)
                .clipShape(Capsule())
                .padding(.horizontal)
                .shadow(color: Color("mainColor").opacity(0.15), radius: 5, x: 5, y: 5)
                .shadow(color: Color("mainColor").opacity(0.15), radius: 5, x: -5, y: -5)
                .padding(.horizontal)
                .padding(.bottom, 15)
            }.ignoresSafeArea(.keyboard, edges: .bottom)
        }
    }

struct TabBarButton: View {
    var image: String
    @Binding var selectedTab: String
    var body: some View {
        Button(action: {selectedTab = image}) {
            Image(systemName: image)
                .renderingMode(.template)
                .foregroundColor(selectedTab == image ? Color("mainColor") : Color.gray)
                .padding()
        }
    }
}



struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
