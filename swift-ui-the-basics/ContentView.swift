//
//  ContentView.swift
//  swift-ui-the-basics
//
//  Created by Bart Verstegen on 17/06/2024.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue, Color.yellow]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing )
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
           VStack {
                Text("Weather")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .frame(width: 200, height: 200)
            }
        }
    }
}

#Preview {
    ContentView()
}
