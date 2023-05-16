

import Foundation

// MARK: - VenuesContainer
struct VenuesContainer: Codable {
    let venues: [Venue]
}

// MARK: - Venue
struct Venue: Codable, Identifiable {
    let id: Int
    let name: String
    let priceFrom, priceTo, seatsFrom, seatsTo: Int
    let address: String
    var liked: Bool
    let photoURL: String
    let photoCount: Int

    enum CodingKeys: String, CodingKey {
        case id, name, priceFrom, priceTo, seatsFrom, seatsTo, address, liked
        case photoURL = "photoUrl"
        case photoCount
    }
    
    static var sampleItems: [Venue] {
        var temptList = [Venue]()
        
        for i in 1...20 {
            let id = i
            let name = "Name: \(i)"
            let priceFrom = 9990
            let priceTo =  79990
            let seatsFrom = 50
            let seatsTo = 250
            let address = "Address"
            let photoURL = "dhjsjhs"
            let photoCount = 1
            
            
            temptList.append(Venue(id: id, name: name, priceFrom: priceFrom, priceTo: priceTo, seatsFrom: seatsFrom, seatsTo: seatsTo, address: address, liked: false, photoURL: photoURL, photoCount: photoCount))
            
        }
        return temptList
    }
}

