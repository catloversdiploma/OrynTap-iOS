//
//  LikedView.swift
//  OrynTap
//
//  Created by Zhanagul on 02.04.2023.
//

import SwiftUI

struct LikedView: View {
    @State var selectedTab = "heart"
    var body: some View {
        ZStack(alignment: .bottom, content:  {
            Color("Color.white")
                .ignoresSafeArea()
            TabBarView(selectedTab: $selectedTab)
        })
    }
}

struct LikedView_Previews: PreviewProvider {
    static var previews: some View {
        LikedView()
    }
}
