//
//  TextFieldView.swift
//  ColorGeneratorSwiftUI
//
//  Created by Raul Shafigin on 24.01.2022.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: Double
    
    var body: some View {
        
       
        TextField("", value: $text, formatter: NumberFormatter())
            .textFieldStyle(.roundedBorder)
            .frame(width: 50)
            
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant(1.0))
    }
}
