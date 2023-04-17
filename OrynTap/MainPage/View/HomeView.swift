//
//  HomeView.swift
//  OrynTap
//
//  Created by Zhanagul on 28.03.2023.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                HStack {
                    Image("Search")
                        .padding(.trailing, 8)
                    TextField("Enter a search term...", text: $searchText)
                    
                }
                .padding(.vertical, 12)
                .padding(.horizontal)
                .background(Color("color1"))
                .cornerRadius(12.0)
                .clipShape(Capsule())
                
                Button(action: {}) {
                    Image("Filter3")
                        .frame(width: 20, height: 20)
                        .padding()
                        .background(Color("color1"))
                        .clipShape(Capsule())
                        .aspectRatio(contentMode: .fit)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 15)
            
            Text("Venues for you").font(Font.custom("SFProText-Semibold", size: 24))
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)
                .padding()
            
            NavigationView {
                List(venues) { venue in
                    VStack {
                        HStack() {
                            Image(venue.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(5)
                                .frame(width: 168, height: 115)
                            Spacer()
                            VStack(spacing: 20) {
                                Text("\(venue.title)")
                                    .font(Font.custom("SFProText-Medium", size: 21))
                                    .foregroundColor(Color("darkGray"))
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("\(venue.price)")
                                        .font(Font.custom("SFProText-Medium", size: 15))
                                        .foregroundColor(Color("darkGray"))
                                    Text("\(venue.seats)")
                                        .font(Font.custom("SFProText-Medium", size: 15))
                                        .foregroundColor(Color("darkGray"))
                                }
                            }
                        }
                        
                        HStack(spacing: 60) {
                            Text("\(venue.address)")
                                .font(Font.custom("SFProText-Medium", size: 13))
                                .foregroundColor(Color("darkGray"))
                            Button(action: {
                                
                            }) {
                                Image(systemName: "heart")
                                    .foregroundColor(Color("mainColor"))
                            }
                        }
                    }
                }
            }
            
               
                
            
        }.background(Color("backgroundColor"))
         
    }
}

struct VenueItem: Identifiable {
    var id = UUID()
    var title: String
    var price: String
    var seats: String
    var address: String
    var image: String
}

var venues = [
    VenueItem(title: "Arista", price: "10 000 - 15 000 ₸", seats: "150 - 200 seats",address: " Kazbek bee district, Respublika, 104", image: "rest1"),
    VenueItem(title: "Toilaiyk", price: "12 000 - 17 000 ₸", seats: "100 - 150 seats", address: " Kazbek bee district, Respublika, 104", image: "rest2"),
    VenueItem(title: "Royal Restaurant", price: "15 000 - 20 000 ₸", seats: "180 - 300 seats",  address: " Kazbek bee district, Respublika, 104", image: "rest3"),
    VenueItem(title: "Nedelka", price: "10 000 -20 000 ₸", seats: "300 - 400 seats", address: " Kazbek bee district, Respublika, 104", image: "rest4"),
    VenueItem(title: "Restaurant 5", price: "13 000 - 15000 ₸", seats: "150 - 250 seats", address: " Kazbek bee district, Respublika, 104", image: "rest5")
]

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
