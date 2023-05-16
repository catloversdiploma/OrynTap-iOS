//
//  OwnerProfileView.swift
//  OrynTap
//
//  Created by Тынысбек Жанагуль on 05.05.2023.
//

import SwiftUI

struct OwnerProfileView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack() {
                    Image("111")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 150, height: 150)
                    VStack(spacing: 8) {
                        Text("Maria Johns")
                            .font(Font.custom("SFProText-Medium", size: 21))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Text("Profile management")
                            .font(Font.custom("SFProText-Medium", size: 14))
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                    }
                    Button(action: {
                        
                    }) {
                        Image(systemName: "chevron.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 15)
                            .foregroundColor(Color.black)
                            .padding(.leading, 48)
                    }
                }
                List {
                    HStack() {
                        Image("key")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("Change password")
                            .font(Font.custom("SFProText-Medium", size: 21))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Image(systemName: "chevron.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 15)
                            .padding(.leading, 95)
                    }.background(NavigationLink("Change password", destination: ChangePasswordInSettings()).opacity(0))
                    HStack() {
                        Image("wrench")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("Settings")
                            .font(Font.custom("SFProText-Medium", size: 21))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Image(systemName: "chevron.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 15)
                            .padding(.leading, 190)
                            
                    }.background(NavigationLink("Settings", destination: Settings()).opacity(0))
                    HStack() {
                        Image("text")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("Help & Feedback")
                            .font(Font.custom("SFProText-Medium", size: 21))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Image(systemName: "chevron.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 15)
                            .padding(.leading, 105)
                    }
                    .background(NavigationLink("Help & Feedback", destination: HelpAndFeedback()).opacity(0))
                }.listStyle(.plain)
            }
        }
    }
}

struct OwnerProfileView_Previews: PreviewProvider {
    static var previews: some View {
        OwnerProfileView()
    }
}
