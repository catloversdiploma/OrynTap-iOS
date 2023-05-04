//
//  DetailsView.swift
//  OrynTap
//
//  Created by Тынысбек Жанагуль on 17.04.2023.
//

import SwiftUI

struct DetailsView: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    var numberOfPhotos = 4
    var venue: VenueItem = venues[0]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            VStack(alignment: .leading) {
                Spacer()
                    .toolbar(content: {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Image(systemName: "chevron.left")
                                    .foregroundColor(Color("mainColor"))
                            }
                        }
                    })
                Spacer()
                
                Image(venue.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 360 ,height: 250)
                    .cornerRadius(5)
                    .padding(.leading)
                    .padding(.trailing)
                
                VStack(alignment: .leading) {
                    Text(venue.title)
                        .font(Font.custom("SFProText-Medium", size: 36))
                        .foregroundColor(Color("darkGray"))
                        .padding(.leading)
                        .padding(.trailing)
                    Text("Karaganda city")
                        .font(Font.custom("SFProText-Medium", size: 16))
                        .foregroundColor(Color("darkGray"))
                        .padding(.leading)
                        .padding(.trailing)
                    Text(venue.address)
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
                    
                    Group {
                        Text("Photo Gallery")
                            .font(Font.custom("SFProText-Medium", size: 20))
                            .foregroundColor(Color.gray)
                            .padding(.top, 10)
                            .padding(.leading)
                            .padding(.trailing)

                            TabView {
                                ForEach(0..<numberOfPhotos) { num in
                                    Image("\(num)")
                                        .resizable()
                                        .scaledToFill()
                                        .tag(num)
                                }
                            }.tabViewStyle(PageTabViewStyle())
                            .frame(width: UIScreen.main.bounds.width, height: 250)
                        
                        Text("Menu")
                            .font(Font.custom("SFProText-Medium", size: 20))
                            .foregroundColor(Color.gray)
                            .padding(.top, 10)
                            .padding(.leading)
                            .padding(.trailing)
                        HStack {
                            Button(action: {
                                
                            }) {
                                Text("Menu 1")
                                    .font(Font.custom("SFProText-Semibold", size: 15))
                                    .frame(width: 70)
                                    .foregroundColor(.white)
                            }
                            .tint(Color("mainColor"))
                            .buttonStyle (.borderedProminent)
                            .buttonBorderShape (.capsule)
                            .controlSize (.large)
                            
                            
                            Button(action: {
                                
                            }) {
                                Text("Menu 2")
                                    .font(Font.custom("SFProText-Semibold", size: 15))
                                    .frame(width: 70)
                                    .foregroundColor(Color("mainColor"))
                            }
                            .tint(Color("color2"))
                            .buttonStyle (.borderedProminent)
                            .buttonBorderShape (.capsule)
                            .controlSize (.large)
                            
                            Button(action: {
                                
                            }) {
                                Text("Menu 2")
                                    .font(Font.custom("SFProText-Semibold", size: 15))
                                    .frame(width: 70)
                                    .foregroundColor(Color("mainColor"))
                            }
                            .tint(Color("color2"))
                            .buttonStyle (.borderedProminent)
                            .buttonBorderShape (.capsule)
                            .controlSize (.large)
                        }.padding(.leading, 15)
                        
                        HStack(spacing: 200) {
                            Text("Price")
                                .font(Font.custom("SFProText-Medium", size: 20))
                                .foregroundColor(Color.gray)
                                .padding(.top, 10)
                                .padding(.leading)
                                .padding(.trailing)
                            
                            Text("15000₸")
                                .font(Font.custom("SFProText-Medium", size: 20))
                                .foregroundColor(Color.black)
                                .padding(.top, 10)
                                .padding(.trailing)
                        }
                        Text("Description")
                            .font(Font.custom("SFProText-Medium", size: 20))
                            .foregroundColor(Color.gray)
                            .padding(.top, 10)
                            .padding(.leading)
                            .padding(.trailing)
                        
                        Text("Hot meal - 1 *Snacks, salads - 9 types *Bread basket *Maintenance - 10% *Buffet table service *Tea table service *Tea room rental *Boiling Beshbarmak (from meat provided by the customer) Dough (rolled by hand) *Light and music equipment: (microphone - 1 pc., amplifier, remote control, speaker system) *LED screen (single activation) *Not provided: laptop and other players! *Fireworks and cold flames are prohibited!")
                            .lineLimit(9)
                            .font(Font.custom("SFProText-Medium", size: 18))
                            .foregroundColor(Color.black)
                            .padding(.top, 10)
                            .padding(.leading)
                            .padding(.trailing)
                        
                        Text("Additional Services")
                            .font(Font.custom("SFProText-Semibold", size: 24))
                            .foregroundColor(Color.black)
                            .padding(.top, 10)
                            .padding(.leading)
                            .padding(.trailing)
                        
                    }
                }
            }.padding(.top)
        })
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(venue: venues[0])
    }
}
