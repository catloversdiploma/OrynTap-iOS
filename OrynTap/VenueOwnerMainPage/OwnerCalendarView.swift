

import SwiftUI

struct OwnerCalendarView: View {
    var body: some View {
        VStack(alignment: .leading) {
                HStack(spacing: 180) {
                    Text("All Halls")
                        .font(Font.custom("SFProText-Medium", size: 20))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding()
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
            Image("calendar1")
                .resizable()
                .aspectRatio(contentMode: .fit)
              
            
            
                HStack(spacing: 60) {
                    Text("Booked & Accepted")
                        .font(Font.custom("SFProText-Medium", size: 20))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding()
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
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(Color("color1"))
                        .frame(width: 360, height: 200)
                    VStack(alignment: .leading) {
                        
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Gennady Shipovsky")
                                    .font(Font.custom("SFProText-Medium", size: 18))
                                    .foregroundColor(Color("mainColor"))
                                HStack(spacing: 85) {
                                    Text("Arista|Big Hall")
                                        .font(Font.custom("SFProText-Regular", size: 20))
                                        .foregroundColor(Color("darkGray"))
                                    Text("350 guests")
                                        .font(Font.custom("SFProText-Regular", size: 18))
                                        .foregroundColor(Color.black)
                                }
                                Text("26 September, 2023")
                                    .font(Font.custom("SFProText-Regular", size: 18))
                                    .foregroundColor(Color.black)
                                HStack(spacing: 200) {
                                    Text("06/04/2023")
                                        .font(Font.custom("SFProText-Regular", size: 14))
                                        .foregroundColor(Color("darkGray"))
                                    Text("15:20")
                                        .font(Font.custom("SFProText-Regular", size: 14))
                                        .foregroundColor(Color("darkGray"))
                                }
                            }
                    }
                }
                .listRowBackground(Color("backgroundColor"))
            }.listStyle(.plain)
        }.background(Color("backgroundColor"))
    }
}

struct OwnerCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        OwnerCalendarView()
    }
}
