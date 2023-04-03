//
//  HomeView.swift
//  OrynTap
//
//  Created by Zhanagul on 28.03.2023.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab = "house"
    @State var searchText: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                HStack {
                    Image("Search")
                        .padding(.trailing, 8)
                    TextField("Enter a search term...", text: $searchText)
                    
                }
                .padding(20)
                .background(Color.white)
                .cornerRadius(12.0)
                .padding(.trailing, 8)
                
                Button(action: {}) {
                    Image("Filter")
                        .frame(width: 26, height: 26)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10.0)
                }
            }
            .padding(.horizontal)
            
            ZStack(alignment: .bottom, content:  {
                Color("mainColor")
                    .ignoresSafeArea()
                TabBarView(selectedTab: $selectedTab)
            })
        }.background(Color("mainColor"))
//        ZStack(alignment: .bottom, content:  {
//            Color("mainColor")
//                .ignoresSafeArea()
//            TabBarView(selectedTab: $selectedTab)
//        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
