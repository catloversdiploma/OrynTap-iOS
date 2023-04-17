//
//  DetailsView.swift
//  OrynTap
//
//  Created by Тынысбек Жанагуль on 17.04.2023.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(venues.first?.image ?? "")
                .resizable()
                .scaledToFill()
                .frame(width: 360 ,height: 200)
                .cornerRadius(5)
                .padding(.leading)
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text(venues.first?.title ?? "")
                    .font(Font.custom("SFProText-Medium", size: 36))
                    .foregroundColor(Color("darkGray"))
                    .padding(.leading)
                    .padding(.trailing)
                Text("Karaganda city")
                    .font(Font.custom("SFProText-Medium", size: 16))
                    .foregroundColor(Color("darkGray"))
                    .padding(.leading)
                    .padding(.trailing)
                Text(venues.first?.address ?? "")
                    .font(Font.custom("SFProText-Medium", size: 16))
                    .foregroundColor(Color("darkGray"))
                    .padding(.bottom, 25)
                    .padding(.leading)
                    .padding(.trailing)
                Text("Halls")
                    .font(Font.custom("SFProText-Semibold", size: 24))
                    .foregroundColor(Color("darkGray"))
                    .padding(.leading)
                    .padding(.trailing)
                
                HStack {
                    Button(action: {
                        
                    }) {
                        Text("French Hall")
                            .font(Font.custom("SFProText-Semibold", size: 15))
                            .frame(width: 100)
                            .foregroundColor(.white)
                    }
                    .tint(Color("mainColor"))
                    .buttonStyle (.borderedProminent)
                    .buttonBorderShape (.capsule)
                    .controlSize (.large)
                    .padding(.leading)
                    .padding(.trailing)
                    
                    Button(action: {
                        
                    }) {
                        Text("Big Hall")
                            .font(Font.custom("SFProText-Semibold", size: 15))
                            .frame(width: 100)
                            .foregroundColor(Color("mainColor"))
                    }
                    .tint(Color("color2"))
                    .buttonStyle (.borderedProminent)
                    .buttonBorderShape (.capsule)
                    .controlSize (.large)
                }
                
                HStack(spacing: 54) {
                    Text("Number of seats")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.gray)
                        .lineLimit(1)
                        .padding(.leading)
                        .padding(.trailing)
                    
                    Text("up to 150")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .frame(width: 100)
                        .foregroundColor(Color("darkGray"))
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Description")
                        .font(Font.custom("SFProText-Medium", size: 20))
                        .foregroundColor(Color.gray)
                        .padding(.top, 10)
                        .padding(.leading)
                        .padding(.trailing)
                    
                    Text("The elegant hall, richly decorated with gold decor, and illuminated by soft light, recalls Versailles during the elegant age of the French kings.")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color("darkGray"))
                        .padding(.leading)
                        .padding(.trailing)
                }
                
                Text("Photo Gallery")
                    .font(Font.custom("SFProText-Medium", size: 20))
                    .foregroundColor(Color.gray)
                    .padding(.top, 10)
                    .padding(.leading)
                    .padding(.trailing)
               
            }
        }.padding(.top)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
