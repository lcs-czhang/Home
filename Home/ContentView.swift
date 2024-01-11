//
//  ContentView.swift
//  Home
//
//  Created by Yuzhou Zhang on 2024-01-11.
//

import SwiftUI

struct ContentView: View {
    // MARK: Stored property
    let purpleToRed = Gradient(colors: [Color.purple, Color.red])
    // MARK: Computed property
    var body: some View {
        ZStack {
            
            //Bottom layer
            LinearGradient(
                gradient: purpleToRed, startPoint: .top, endPoint: .bottom
            )
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
