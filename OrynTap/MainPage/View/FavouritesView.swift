//
//  LikedView.swift
//  OrynTap
//
//  Created by Zhanagul on 02.04.2023.
//

import SwiftUI

struct FavouritesView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Your favorite Venues").font(Font.custom("SFProText-Semibold", size: 24))
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
            }.padding(.horizontal)
                .padding(.vertical, 15)
            
            List {
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(Color("color1"))
                        .frame(width: 360, height: 200)
                    VStack {
                        HStack() {
                            Image("rest1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(5)
                                .frame(width: 168, height: 115)
                            VStack(spacing: 20) {
                                Text("Arista")
                                    .font(Font.custom("SFProText-Medium", size: 21))
                                    .foregroundColor(Color("darkGray"))
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("10 000 - 15 000 ₸")
                                        .font(Font.custom("SFProText-Medium", size: 15))
                                        .foregroundColor(Color("darkGray"))
                                    Text("150 - 200 seats")
                                        .font(Font.custom("SFProText-Medium", size: 15))
                                        .foregroundColor(Color("darkGray"))
                                }
                            }
                        }
                        
                        HStack(spacing: 60) {
                            Text("Kazbek bee district, Respublika, 104")
                                .font(Font.custom("SFProText-Medium", size: 13))
                                .foregroundColor(Color("darkGray"))
                            Button(action: {
                                
                            }) {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(Color("mainColor"))
                            }
                        }
                    }
                }
            }.listStyle(.plain)
            
            
            ZStack(alignment: .bottom, content:  {
              Color("backgroundColor")
                            .ignoresSafeArea()
            })
        }.background(Color("backgroundColor"))
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
