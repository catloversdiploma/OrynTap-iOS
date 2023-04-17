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
