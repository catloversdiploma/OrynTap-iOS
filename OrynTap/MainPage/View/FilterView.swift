

import SwiftUI

struct FilterView: View {
    @State var isEditing: Bool = false
    @State private var isEditingChanged = false
    @State private var isEditingChanged2 = false
    @State private var isEditingChanged3 = false
    @State private var isEditingChanged4 = false
    @State private var borderColor = Color(.lightGray)
    @State var numberOfGuests: String = ""
    @State var priceFrom: String = ""
    @State var priceTo: String = ""
    @State var seatsFrom: String = ""
    @State var seatsTo: String = ""
    @State private var isChecked = false
    @State private var isChecked1 = false
    @State private var isChecked2 = false
    @State private var isChecked3 = false
    @State var country: String = "Kazakhstan"
    let cities = ["Aktau", "Aktobe", "Almaty", "Arkalyk", "Astana", "Atyrau", "Baikonur", "Balqash", "Jezkazgan", "Karagandy", "Kentau", "Kyzylorda", "Kokshetau", "Kostanay", "Janaozen", "Pavlodar", "Petropavl", "Ridder", "Saran", "Satpayev", "Semey", "Stepnogorsk", "Taldykorgan", "Taraz", "Temirtau", "Turkistan", "Oral", "Oskemen", "Shymkent", "Shakhtinsk", "Schuchinsk", "Ekibastuz"]
    @State private var selection = ""
    @State var cityText: String = ""
    @State private var goesToMainView: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            List {
                HStack {
                    Text("Region")
                        .font(Font.custom("SFProText-Semibold", size: 20))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    Picker("", selection: $selection) {
                        ForEach(cities, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
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
                }
                
                VStack(alignment: .leading) {
                    Text("Price, ₸ ")
                        .font(Font.custom("SFProText-Regular", size: 15))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    HStack(spacing: 20) {
                        TextField("from", text: $priceFrom, onEditingChanged: { isEditingChanged in
                            self.isEditingChanged = isEditingChanged
                        })
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .padding()
                        .frame(width: 166,height: 34)
                        .overlay(RoundedRectangle(cornerRadius: 4.0).strokeBorder(isEditingChanged ? Color("mainColor") : borderColor, style: StrokeStyle(lineWidth: 1.0)))
                        TextField("to", text: $priceTo, onEditingChanged: { isEditingChanged in
                            self.isEditingChanged2 = isEditingChanged
                        })
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .padding()
                        .frame(width: 166,height: 34)
                        .overlay(RoundedRectangle(cornerRadius: 4.0).strokeBorder(isEditingChanged2 ? Color("mainColor") : borderColor, style: StrokeStyle(lineWidth: 1.0)))
                    }
                }
                VStack(alignment: .leading) {
                    Text("Date ")
                        .font(Font.custom("SFProText-Regular", size: 15))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    HStack(spacing: 20) {
                        TextField("from", text: $seatsFrom, onEditingChanged: { isEditingChanged in
                            self.isEditingChanged3 = isEditingChanged
                        })
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .padding()
                        .frame(width: 166,height: 34)
                        .overlay(RoundedRectangle(cornerRadius: 4.0).strokeBorder(isEditingChanged3 ? Color("mainColor") : borderColor, style: StrokeStyle(lineWidth: 1.0)))
                        TextField("to", text: $seatsTo, onEditingChanged: { isEditingChanged in
                            self.isEditingChanged4 = isEditingChanged
                        })
                        .font(Font.custom("SFProText-Semibold", size: 16))
                        .padding()
                        .frame(width: 166,height: 34)
                        .overlay(RoundedRectangle(cornerRadius: 4.0).strokeBorder(isEditingChanged4 ? Color("mainColor") : borderColor, style: StrokeStyle(lineWidth: 1.0)))
                    }
                }
                VStack(alignment: .leading, spacing: 10) {
                    Text("Available for: ")
                        .font(Font.custom("SFProText-Semibold", size: 15))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    HStack(spacing: 20) {
                        Text("at least 1 date within interval")
                            .font(Font.custom("SFProText-Semibold", size: 16))
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isChecked) {
                            
                        }
                        .toggleStyle(.checkmark)
                    }
                    HStack(spacing: 20) {
                        Text("all dates within interval")
                            .font(Font.custom("SFProText-Semibold", size: 16))
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isChecked1) {
                            
                        }
                        .toggleStyle(.checkmark)
                    }
                }
                VStack(alignment: .leading, spacing: 10) {
                    Text("For all dates within interval: ")
                        .font(Font.custom("SFProText-Semibold", size: 15))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    HStack(spacing: 20) {
                        Text("show only one hall")
                            .font(Font.custom("SFProText-Semibold", size: 16))
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isChecked2) {
                            
                        }
                        .toggleStyle(.checkmark)
                    }
                    HStack(spacing: 20) {
                        Text("include different halls")
                            .font(Font.custom("SFProText-Semibold", size: 16))
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isChecked3) {
                            
                        }
                        .toggleStyle(.checkmark)
                    }
                }
                NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true), isActive: $goesToMainView)
                {
                    Button(action: {
                        goesToMainView = true
                    }) {
                        Text("Filter")
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

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
 
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(lineWidth: 2)
                .frame(width: 25, height: 25)
                .cornerRadius(5.0)
                .foregroundColor(Color.gray)
                .overlay {
                    Image(systemName: configuration.isOn ? "checkmark" : "")
                        .foregroundColor(Color.gray)
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
 
            configuration.label
 
        }
    }
}

extension ToggleStyle where Self == CheckboxToggleStyle {
 
    static var checkmark: CheckboxToggleStyle { CheckboxToggleStyle() }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
