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
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color("lightblue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing )
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Cupertino CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack (spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                         .renderingMode(.original)
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 180, height: 180)
                    Text("70°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    Divider()
                    //Color.red.frame(height: 1 / UIScreen.main.scale)
                }
                Spacer()
                HStack(spacing: 25) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 70)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 71)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 40)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 25)
                }
                Spacer()
                Button {
                    
                } label: {
                    Text( "Change Day Time")
                }
                Spacer()
               
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text(String( temperature ) + "°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
