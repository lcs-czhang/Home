//
//  ContentView.swift
//  Home
//
//  Created by Yuzhou Zhang on 2024-01-11.
//

import SwiftUI

struct ContentView: View {
    // MARK: Stored property
    let tealToBlue = Gradient(colors: [Color.teal, Color.blue, Color.clear])
    let yellowToPurple = Gradient(colors: [Color.yellow, Color.purple, Color.clear])
    // MARK: Computed property
    var body: some View {
        ZStack {
            
            //Bottom layer
            RadialGradient(gradient: tealToBlue, center: .topLeading, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            //Middle layer
            RadialGradient(gradient: yellowToPurple, center: .bottomTrailing, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            //Top layer
            VStack {
                Image(systemName: "globe")
                    .resizable()
                    .scaledToFit()
                    .frame(width:100)
                Text("Hello, world!")
            }
        }
    }
}

#Preview {
    ContentView()
}
