//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by Thea Yocum on 1/21/26.
//

import SwiftUI

struct ContentView: View {
    @State private var pressCount: Int = 0
    
    
    var body: some View {
        VStack {
            
            Text("Press count: \(pressCount)")
            Button("Press me") {
                pressCount += 1
            }
            .buttonStyle(.borderedProminent)
        }
        .font(.title2)
    }
}

#Preview {
    ContentView()
}
