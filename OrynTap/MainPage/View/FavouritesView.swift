
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
                            Image("image0")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(5)
                                .frame(width: 168, height: 115)
                            VStack(spacing: 20) {
                                Text("Test_Venue")
                                    .font(Font.custom("SFProText-Medium", size: 21))
                                    .foregroundColor(Color("darkGray"))
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("9990 - 77990 ₸")
                                        .font(Font.custom("SFProText-Medium", size: 15))
                                        .foregroundColor(Color("darkGray"))
                                    Text("50 - 250 seats")
                                        .font(Font.custom("SFProText-Medium", size: 15))
                                        .foregroundColor(Color("darkGray"))
                                }
                            }
                        }
                        
                        HStack(spacing: 150) {
                            Button(action: {
                                
                            }) {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(Color("mainColor"))
                            }
                            Text("Abay av. 100")
                                .font(Font.custom("SFProText-Medium", size: 13))
                                .foregroundColor(Color("darkGray"))
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
