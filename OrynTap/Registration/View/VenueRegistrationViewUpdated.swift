

import Foundation
import SwiftUI
import PhotosUI
import iPhoneNumberField
import PhoneNumberKit

struct VenueRegistrationViewUpdated: View {
    @State var venueName: String = ""
    @State var country: String = "Kazakhstan"
    let cities = ["Aktau", "Aktobe", "Almaty", "Arkalyk", "Astana", "Atyrau", "Baikonur", "Balqash", "Jezkazgan", "Karagandy", "Kentau", "Kyzylorda", "Kokshetau", "Kostanay", "Janaozen", "Pavlodar", "Petropavl", "Ridder", "Saran", "Satpayev", "Semey", "Stepnogorsk", "Taldykorgan", "Taraz", "Temirtau", "Turkistan", "Oral", "Oskemen", "Shymkent", "Shakhtinsk", "Schuchinsk", "Ekibastuz"]
    @State var city: String = ""
    @State var cityText: String = ""
    @State var address: String = ""
    @State var confirmPassword: String = ""
    @State private var selectedItem: PhotosPickerItem?
    @State private var selectedImage: Image?
    @State var phoneNumber: String = ""
    @State var isEditing: Bool = true
    @State private var goesToOwnerMainPage: Bool = false
    
    var body: some View {
        //NavigationStack
        VStack(alignment: .leading, spacing: 20) {
            
            HStack(alignment: .top, spacing: 20) {
                Spacer()
                Button (action: {
                }, label: {
                    Text("Skip")
                        .kerning(1.2)
                        .foregroundColor(Color("mainColor"))
                        .font(Font.custom("SFProText-Semibold", size: 18))
                }).padding(.trailing, 20)
            }
            .foregroundColor(.black)
                
            Text("Set up your venue").font(Font.custom("SFProText-Bold", size: 34))
                    .foregroundColor(Color("mainColor"))
                    .multilineTextAlignment(.leading)
                    .padding(.top, 0)
                    .padding(.leading, 25)
            
            VStack(alignment: .center, spacing: 15) {
                if let selectedImage {
                    selectedImage
                        .resizable()
                        .frame(width: 176, height: 120)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0))
                        ).cornerRadius(25.0)
                    
                }
                else {
                    Image(systemName: "photo.artframe")
                        .fixedSize()
                        .frame(width: 176, height: 120)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("mainColor"), style: StrokeStyle(lineWidth: 1.0))
                        )
                        .foregroundColor(.gray.opacity(0.6))
                }
                
                PhotosPicker(selection: $selectedItem, matching: .images
                ) {
                    Text("Edit main image")
                        .foregroundColor(Color("mainColor"))
                        .font(Font.custom("SFProText", size: 16))
                }
                
                .onChange(of: selectedItem) {
                    newValue in
                    Task {
                        if let imageData = try? await
                            newValue?
                            .loadTransferable(type: Data.self), let image = UIImage(data: imageData) {
                            selectedImage = Image (uiImage: image)
                        }
                    }
                }
                TextField("Venue name", text: $venueName)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                TextField("Country", text: $country)
                    .font(Font.custom("SFProText-Semibold", size: 16))
                    .padding()
                    .frame(height: 55)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    .disabled(true)
                    
                HStack{
                    TextField("City", text:$cityText)
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .padding()
                        .disabled(true)
                    
                    Picker("City", selection: $city) {
                        ForEach(cities, id: \.self){
                            Text($0)
                        }
                    }
                    .padding()
                }
                .frame(height: 55)
                .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
              .padding(.leading, 25)
              .padding(.trailing, 25)
            }
            
            TextField("Address", text: $address)
                .font(Font.custom("SFProText-Semibold", size: 16))
                .padding()
                .frame(height: 55)
                .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                .padding(.leading, 25)
                .padding(.trailing, 25)
            
            iPhoneNumberField("Phone number", text: $phoneNumber, isEditing: $isEditing)
                .prefixHidden(false)
                .maximumDigits(10)
                .font(Font.custom("SFProText-Semibold", size: 16))
                .padding()
                .frame(height: 55)
                .overlay(RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 1.0)))
                .padding(.leading, 25)
                .padding(.trailing, 25)
            NavigationLink(destination: VenueOwnerTabBarView(), isActive: $goesToOwnerMainPage)
            {
                Button(action: {
                    goesToOwnerMainPage = true
                }) {
                    Text("Save")
                        .font(Font.custom("SFProText-Semibold", size: 20))
                        .frame(width: 320)
                        .frame(height: 30)
                        .foregroundColor(.white)
                }
                .tint(Color("mainColor"))
                .buttonStyle (.borderedProminent)
                .buttonBorderShape (.capsule)
                .controlSize(.large)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .disabled(venueName.isEmpty || city.isEmpty || address.isEmpty || selectedImage==nil || phoneNumber.isEmpty)
            }
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
          )
          .background(Color("backgroundColor"))
    }
}

struct VenueRegistrationViewUpdated_Previews: PreviewProvider {
    static var previews: some View {
        VenueRegistrationViewUpdated()
    }
}

