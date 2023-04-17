//
//  RequestsView.swift
//  OrynTap
//
//  Created by Тынысбек Жанагуль on 16.04.2023.
//

import SwiftUI

struct RequestsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Requests").font(Font.custom("SFProText-Semibold", size: 24))
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

struct RequestsView_Previews: PreviewProvider {
    static var previews: some View {
        RequestsView()
    }
}
