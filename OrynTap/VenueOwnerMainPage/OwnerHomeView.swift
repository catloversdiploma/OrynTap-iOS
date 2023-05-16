
import SwiftUI

struct OwnerHomeView: View {
    @State var segmentedChoice = 0
    var body: some View {
        VStack {
            HStack(spacing: 180) {
                Text("Requests")
                    .font(Font.custom("SFProText-Semibold", size: 26))
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding()
                Button(action: {}) {
                    Image("Filter3")
                        .frame(width: 18, height: 18)
                        .padding()
                        .clipShape(Capsule())
                        .aspectRatio(contentMode: .fit)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                CustomSegmentedPicker(selection: segmentedChoice, titles: ["New", "Accepted", "Prepaid", "Booked", "Canceled", "Finished"], selectedItemColor: Color("mainColor"), backgroundColor: Color("backgroundColor"), selectedItemFontColor: .white, defaultItemFontColor: .black)
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

struct OwnerHomeView_Previews: PreviewProvider {
    static var previews: some View {
        OwnerHomeView()
    }
}
