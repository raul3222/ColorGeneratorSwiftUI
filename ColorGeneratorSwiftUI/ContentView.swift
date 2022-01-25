//
//  ContentView.swift
//  ColorGeneratorSwiftUI
//
//  Created by Raul Shafigin on 24.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = 0.0
    @State private var greenSliderValue = 0.0
    @State private var blueSliderValue = 0.0
    
    var body: some View {
        VStack{
            MyRectangleView(
                redSliderValue: redSliderValue,
                greenSliderValue: greenSliderValue,
                blueSliderValue: blueSliderValue)
            
            SlidersView(sliderValue: $redSliderValue, sliderColor: .red)
            SlidersView(sliderValue: $greenSliderValue, sliderColor: .green)
            SlidersView(sliderValue: $blueSliderValue, sliderColor: .blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyRectangleView: View {
    let redSliderValue: Double
    let greenSliderValue: Double
    let blueSliderValue: Double
    
    var body: some View {
        Rectangle()
            .foregroundColor(Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255))
            .frame(width: 300, height: 150)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 4))
            .padding(30)
    }
}

struct SlidersView: View {
    @Binding var sliderValue: Double
    let sliderColor: Color

    var body: some View {
        HStack{
            ColorSliderView(
                value: $sliderValue,
                sliderColor: sliderColor)
            TextFieldView(text: $sliderValue)
        }
    }
}
