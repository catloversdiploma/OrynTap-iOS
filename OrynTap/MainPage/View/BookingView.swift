

import SwiftUI

struct BookingView: View {
    @State var numberOfGuests: String = ""
    @State var date: String = ""
    @State var isEditing: Bool = false
    @State private var isEditingChanged = false
    @State private var isEditingChanged2 = false
    @State private var isEditingChanged3 = false
    @State private var isEditingChanged4 = false
    @State private var borderColor = Color(.lightGray)
    @State private var didTap:Bool = false
    @State private var didTap1:Bool = false
    @State private var goesToBookConfirmView: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            List {
                HStack {
                    Text("Number of guests")
                        .font(Font.custom("SFProText-Semibold", size: 20))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    TextField("qt.", text: $numberOfGuests, onEditingChanged: { isEditingChanged in
                        self.isEditing = isEditingChanged
                    })
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .padding()
                        .frame(width: 99,height: 34)
                        .overlay(RoundedRectangle(cornerRadius: 4.0).strokeBorder(isEditing ? Color("mainColor") : borderColor, style: StrokeStyle(lineWidth: 1.0)))
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                }.padding(8)
                
                HStack {
                    Text("Date")
                        .font(Font.custom("SFProText-Semibold", size: 20))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    TextField("day/month/year", text: $date, onEditingChanged: { isEditingChanged in
                        self.isEditingChanged = isEditingChanged
                    })
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .padding()
                        .frame(width: 160,height: 34)
                        .overlay(RoundedRectangle(cornerRadius: 4.0).strokeBorder(isEditingChanged ? Color("mainColor") : borderColor, style: StrokeStyle(lineWidth: 1.0)))
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                }.padding(8)
                VStack(alignment: .leading) {
                    Text("Selected Hall")
                        .font(Font.custom("SFProText-Semibold", size: 20))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    HStack {
                        Button(action: {
                            self.didTap = true
                        }) {
                            Text("French Hall")
                                .font(Font.custom("SFProText-Semibold", size: 15))
                                .frame(width: 100)
                                .foregroundColor(didTap ? .white : Color("mainColor"))
                        }
                        .tint(didTap ? Color("mainColor"):Color("color2"))
                        .buttonStyle (.borderedProminent)
                        .buttonBorderShape (.capsule)
                        .controlSize (.large)
                        .padding(.leading)
                        .padding(.trailing)
                        
                        Button(action: {
                            self.didTap1 = true
                        }) {
                            Text("Big Hall")
                                .font(Font.custom("SFProText-Semibold", size: 15))
                                .frame(width: 100)
                                .foregroundColor(didTap1 ? Color("mainColor") : .white)
                        }
                        .tint(didTap1 ? Color("color2") : Color("mainColor"))
                        .buttonStyle (.borderedProminent)
                        .buttonBorderShape (.capsule)
                        .controlSize (.large)
                    }
                }.padding(8)
                VStack(alignment: .leading) {
                    Text("Selected Menu")
                        .font(Font.custom("SFProText-Semibold", size: 20))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
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
                            Text("Menu 3")
                                .font(Font.custom("SFProText-Semibold", size: 15))
                                .frame(width: 70)
                                .foregroundColor(Color("mainColor"))
                        }
                        .tint(Color("color2"))
                        .buttonStyle (.borderedProminent)
                        .buttonBorderShape (.capsule)
                        .controlSize (.large)
                    }.padding(8)
                    VStack(alignment: .leading) {
                        Text("Add additional services")
                            .font(Font.custom("SFProText-Semibold", size: 20))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        HStack(spacing: 230) {
                            Text("Service")
                                .font(Font.custom("SFProText-Medium", size: 18))
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.leading)
                            
                            Button(action: {
                                
                            }) {
                               Image(systemName: "plus")
                                    .foregroundColor(Color.gray)
                            }
                        }.padding()
                    }
                }
                NavigationLink(destination: BookingConfirmView().navigationBarBackButtonHidden(true), isActive: $goesToBookConfirmView)
                {
                    Button(action: {
                        goesToBookConfirmView = true
                    }) {
                        Text("Book")
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
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
