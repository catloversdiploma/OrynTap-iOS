//
//  NumberPhoneMaskView.swift
//  OrynTap
//
//  Created by Zhanagul on 18.03.2023.
//

import SwiftUI

struct NumberPhoneMaskView: View {
    let maskPhone = "+X-(XXX)-XXX-XX-XX"
    @State var text = ""
    
    var body: some View {
        VStack {
            let textChangedBinding = Binding<String> (
                get: { FilterNumberPhone.format(with: self.maskPhone, phone: self.text)},
                set: { self.text = $0})
            TextFieldContainer("+7", text: textChangedBinding)
        }.padding()
    }
}

struct NumberPhoneMaskView_Previews: PreviewProvider {
    static var previews: some View {
        NumberPhoneMaskView()
    }
}

