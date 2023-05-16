
import SwiftUI

class VenuesViewModel: ObservableObject {
    @Published var venues: [Venue] = []
    @Published var showingFavs = false
    @Published var savedItems: Set<Int> = [1, 7]
    let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySUQiOjUsInJvbGVJRCI6MSwidG9rZW5UeXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg1Mzk1NzkzfQ.7xrhumZjT2t_OgBL2xl4jFB1rKLoAbERapu7oExX_cY"
    
    func fetch() {
        guard let url = URL(string: "http://84.252.141.147:3333/api/v1/venue") else {
            return
        }
        
        var request = URLRequest(url: url)
        request.addValue("\(token)", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print("No data in response: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            if let decodedItems = try? JSONDecoder().decode(VenuesContainer.self, from: data) {
                DispatchQueue.main.async {
                    self.venues = decodedItems.venues
                    print("my venues : \(decodedItems.venues)")
                }
            }
            else{
                print("salam aleikum")
            }
        }.resume()
    }
    
    // Filter saved items
    var filteredItems: [Venue]  {
        if showingFavs {
            return venues.filter { savedItems.contains($0.id) }
        }
        return venues
    }
    
    private var db = Database()
    
    init() {
        self.savedItems = db.load()
        self.venues = Venue.sampleItems
    }
    
    func sortFavs() {
        withAnimation() {
            showingFavs.toggle()
        }
    }
    
    func contains(_ venue: Venue) -> Bool {
            savedItems.contains(venue.id)
        }
    
    // Toggle saved items
    func toggleFav(venue: Venue) {
        if contains(venue) {
            savedItems.remove(venue.id)
        } else {
            savedItems.insert(venue.id)
        }
        db.save(items: savedItems)
    }
}

