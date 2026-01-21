//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by Thea Yocum on 1/21/26.
//

import SwiftUI

struct ContentView: View {
    @State private var pressCount: Int = 0
    @State private var toggleIsOn = true
    @State private var name = ""
    @State private var selectedColor: Color = .red
    @State private var selectedDate = Date()
    @State private var stepperValue = 1
    @State private var sliderValue = 50.0
    
    
    var body: some View {
        VStack {
            Spacer()

            Text("Press count: \(pressCount)")
            Button("Press me") {
                pressCount += 1
            }
            .buttonStyle(.borderedProminent)
            Spacer()

            TextField("Enter a name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("name entered: \(name)")
            
            Spacer()

            Toggle("Toggle is: \(toggleIsOn ? "On" : "Off")", isOn: $toggleIsOn)
            
            Spacer()
            
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
            
            ColorPicker("Pick a rectangle color:", selection: $selectedColor)
            
            Spacer()
            
            DatePicker("Date:", selection: $selectedDate)
            Text("Selected date is: \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
            
            Spacer()
            
            Stepper("Stepper value: \(stepperValue)", value: $stepperValue, in: 1...10)
            
            Spacer()
            
            Slider(value: $sliderValue, in:0...100) {
                //Accessibiloity label
            } minimumValueLabel: {
                Image(systemName: "speaker.minus")
            } maximumValueLabel: {
                Image(systemName: "speaker.plus")
            }
            Text("slider value: \(Int(sliderValue))%")
            
            Spacer()
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}
