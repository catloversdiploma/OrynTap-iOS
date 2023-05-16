
import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    @State var goingToDetailsView: Bool = false
    @StateObject var viewModel = VenuesViewModel()
    @State private var goesToFilterView: Bool = false
    @State private var liked = false
    
    var filteredVenues: [String] {
           if searchText.isEmpty {
               return viewModel.venues.map { $0.name }
           } else {
               return viewModel.venues.map { $0.name }.filter { $0.lowercased().contains(searchText.lowercased()) }
           }
       }
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    SearchBar(text: $searchText)
                    NavigationLink(destination: FilterView(), isActive: $goesToFilterView)
                    {
                        Button(action: {
                            goesToFilterView = true
                        }) {
                            Image("slider")
                                .frame(width: 18, height: 18)
                                .padding()
                                .background(Color("color1"))
                                .clipShape(Capsule())
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 15)
                
                Text("Venues for you").font(Font.custom("SFProText-Semibold", size: 24))
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                List(viewModel.filteredItems) { venue in
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0)
                                .fill(Color("color1"))
                                .frame(width: 360, height: 200)
                            VStack {
                                HStack() {
                                    URLImage(urlString: venue.photoURL)
                                    VStack(spacing: 20) {
                                        Text("\(venue.name)")
                                            .font(Font.custom("SFProText-Medium", size: 21))
                                            .foregroundColor(Color("darkGray"))
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text("\(venue.priceFrom)" + "-" + "\(venue.priceTo) ₸")
                                                .font(Font.custom("SFProText-Medium", size: 15))
                                                .foregroundColor(Color("darkGray"))
                                            Text("\(venue.seatsFrom)" + "-" + "\(venue.seatsTo) seats")
                                                .font(Font.custom("SFProText-Medium", size: 15))
                                                .foregroundColor(Color("darkGray"))
                                        }
                                    }
                                }
                                
                                HStack(spacing: 150) {
                                        Button(action: {
                                            viewModel.toggleFav(venue: venue)
                                        }) {
                                            Image(systemName: viewModel.contains(venue) ? "heart.fill" : "heart")
                                                .foregroundColor(viewModel.contains(venue) ? Color("mainColor") : .gray)
                                        }
                                        Text("\(venue.address)")
                                            .font(Font.custom("SFProText-Medium", size: 13))
                                            .foregroundColor(Color("darkGray"))
                                    }
                                
                            }
                        }
                            
                    
                    .listRowBackground(Color("backgroundColor"))
                    .background(NavigationLink("", destination: DetailsView().navigationBarBackButtonHidden(true)).opacity(0))
                    }.listStyle(.plain)
                    .task {
                        viewModel.fetch()
                    }
                
            }.background(Color("backgroundColor"))
        }
    }
    func indexOf(_ venue: Venue) -> Int? {
        return viewModel.venues.firstIndex { $0.id == venue.id }
       }
}

struct URLImage: View {
    let urlString: String
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
                .frame(width: 168, height: 115)
        } else {
            Image(systemName: "")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
                .frame(width: 168, height: 115)
                .background(Color.gray.opacity(0.1))
                .onAppear() {
                  fetchData()
                }
        }
    }
    private func fetchData() {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}

struct SearchBar: View {
    @Binding var text: String
    var body: some View {
        HStack {
            Image("Search")
                .padding(.trailing, 8)
            TextField("Enter a search term...", text: $text)
            
        }
        .padding(.vertical, 12)
        .padding(.horizontal)
        .background(Color("color1"))
        .cornerRadius(12.0)
        .clipShape(Capsule())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
