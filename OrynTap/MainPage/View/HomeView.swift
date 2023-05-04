//
//  HomeView.swift
//  OrynTap
//
//  Created by Zhanagul on 28.03.2023.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    @State var goingToDetailsView: Bool = false
    var body: some View {
        NavigationView {
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
                        Image("slider")
                            .frame(width: 18, height: 18)
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
                
                    List(venues) { venue in
                        CardView(venue: venue)
                            .listRowBackground(Color("backgroundColor"))
                            .background(NavigationLink("", destination: DetailsView(venue: venue).navigationBarBackButtonHidden(true)).opacity(0))
                    }.listStyle(.plain)
                
            }.background(Color("backgroundColor"))
        }
    }
}

var venues = [
    VenueItem(title: "Arista", price: "10 000 - 15 000 ₸", seats: "150 - 200 seats",address: " Kazbek bee district, Respublika, 104", image: "rest1", isFavorite: false),
    VenueItem(title: "Toilaiyk", price: "12 000 - 17 000 ₸", seats: "100 - 150 seats", address: " Kazbek bee district, Respublika, 104", image: "rest2", isFavorite: true),
    VenueItem(title: "Royal Restaurant", price: "15 000 - 20 000 ₸", seats: "180 - 300 seats",  address: " Kazbek bee district, Respublika, 104", image: "rest3", isFavorite: true),
    VenueItem(title: "Nedelka", price: "10 000 -20 000 ₸", seats: "300 - 400 seats", address: " Kazbek bee district, Respublika, 104", image: "rest4", isFavorite: false),
    VenueItem(title: "Restaurant 5", price: "13 000 - 15000 ₸", seats: "150 - 250 seats", address: " Kazbek bee district, Respublika, 104", image: "rest5",isFavorite: true)
]

struct CardView: View {
    
    let venue: VenueItem
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color("color1"))
                .frame(width: 360, height: 200)
            VStack {
                HStack() {
                    Image(venue.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(5)
                        .frame(width: 168, height: 115)
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
                        if venue.isFavorite {
                            Image(systemName: "heart.fill")
                                .foregroundColor(Color("mainColor"))
                        } else {
                            Image(systemName: "heart")
                                .foregroundColor(Color("mainColor"))
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
