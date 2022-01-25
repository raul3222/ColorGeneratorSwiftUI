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
            MyRectangle(
                redSliderValue: redSliderValue,
                greenSliderValue: greenSliderValue,
                blueSliderValue: blueSliderValue)
            
            HStack{
                ColorSliderView(
                    value: $redSliderValue,
                    sliderColor: Color.red,
                    color: .red)
                TextFieldView(text: $redSliderValue)
            }
            HStack {
                ColorSliderView(
                    value: $greenSliderValue,
                    sliderColor: Color.green,
                    color: .green)
                TextFieldView(text: $greenSliderValue)
            }
            HStack{
                ColorSliderView(
                    value: $blueSliderValue,
                    sliderColor: Color.blue,
                    color: .blue)
                TextFieldView(text: $blueSliderValue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyRectangle: View {
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
