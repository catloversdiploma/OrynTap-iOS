//
//  BookingConfirmView.swift
//  OrynTap
//
//  Created by Тынысбек Жанагуль on 14.05.2023.
//

import SwiftUI

struct BookingConfirmView: View {
    @State private var goesToView: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 20) {
                Text("Your request has been sent! Wait for the venue's response.")
                    .font(Font.custom("SFProText-Semibold", size: 18))
                    .foregroundColor(Color("mainColor"))
                    .multilineTextAlignment(.leading)
                Text("Booking details")
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
            }
            List {
                HStack(spacing: 170) {
                    Text("City")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                    Text("Karaganda")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                HStack(spacing: 150) {
                    Text("Venue")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                    Text("Test_Venue")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                HStack(spacing: 180) {
                    Text("Hall")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                    Text("French Hall")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                HStack(spacing: 170) {
                    Text("Menu")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                    Text("Menu1")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                HStack(spacing: 70) {
                    Text("Number of guests")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                    Text("250")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                HStack(spacing: 100) {
                    Text("Event Date")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                    Text("26/05/2023")
                        .font(Font.custom("SFProText-Medium", size: 18))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true), isActive: $goesToView)
                {
                    Button(action: {
                        goesToView = true
                    }) {
                        Text("Done")
                            .font(Font.custom("SFProText-Semibold", size: 16))
                            .frame(width: 300)
                            .foregroundColor(.white)
                    }.tint(Color("mainColor"))
                        .buttonStyle (.borderedProminent)
                        .buttonBorderShape (.capsule)
                        .controlSize (.large)
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                }
            }.listStyle(.plain)
        }.padding()
    }
}

struct BookingConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        BookingConfirmView()
    }
}
