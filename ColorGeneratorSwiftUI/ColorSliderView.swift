//
//  ColorSliderView.swift
//  ColorGeneratorSwiftUI
//
//  Created by Raul Shafigin on 24.01.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    //@State private var isEditing = false
    let sliderColor: Color
    let color: Color

    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(color)
                .frame(width: 50)
            Slider(value: $value, in: 0...255, step: 1)
            .accentColor(sliderColor)
                .frame(width: 250)
        }
        
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(value: .constant(1.0), sliderColor: Color.red, color: Color.blue)
    }
}
