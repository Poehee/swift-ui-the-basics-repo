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
                Text("Cupertino CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack {
                    Image(systemName: "cloud.sun.fill")
                         .renderingMode(.original)
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("70°")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                Spacer()
               
            }
        }
    }
}

#Preview {
    ContentView()
}
