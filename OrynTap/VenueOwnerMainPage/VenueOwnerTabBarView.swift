

import SwiftUI

struct VenueOwnerTabBarView: View {
    @State var selectedTab = "arrow.down.circle"
    var tabs = ["arrow.down.circle", "calendar", "building.columns", "person"]
    
    var body: some View {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
                HomeView()
                
                TabView(selection: $selectedTab) {
                    OwnerHomeView()
                        .tag("arrow.down.circle")
                    OwnerCalendarView()
                        .tag("calendar")
                    SetupVenueView()
                        .tag("building.columns")
                    OwnerProfileView()
                        .tag("person")
                }
                
                HStack(spacing: 0) {
                    ForEach(tabs,id: \.self) { image in
                        OwnerTabBarButton(image: image, selectedTab: $selectedTab)
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

struct OwnerTabBarButton: View {
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



struct VenueOwnerTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        VenueOwnerTabBarView()
    }
}

