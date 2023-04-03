//
//  TextFieldContainer.swift
//  OrynTap
//
//  Created by Zhanagul on 18.03.2023.
//

import SwiftUI

struct TextFieldContainer: UIViewRepresentable {
    
    private var placeholder: String
    private var text: Binding<String>
    
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self.text = text
    }
    
    func makeCoordinator() -> TextFieldContainer.Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<TextFieldContainer>) -> UITextField {
        let innerTextfield = UITextField(frame: .zero)
        innerTextfield.placeholder = placeholder
        innerTextfield.text = text.wrappedValue
        innerTextfield.delegate = context.coordinator
        innerTextfield.keyboardType = .numberPad
        return innerTextfield
    }
    
    func updateUIView(_ uiView: UITextField, context: UIViewRepresentableContext<TextFieldContainer>) {
        uiView.text = self.text.wrappedValue
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: TextFieldContainer
        
        init(_ textFieldContainer: TextFieldContainer) {
            self.parent = textFieldContainer
        }
    }
}


