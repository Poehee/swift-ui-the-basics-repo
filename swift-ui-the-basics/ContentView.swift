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
            BackgroundView(topColor: .blue, bottomColor: .lightblue)
            VStack {
                
                CityNameView(cityName: "Cupertino CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 70)
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
                    print( "Tapped" )
                } label: {
                    WeatherButton(title: "Change Day Time")
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
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing )
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityNameView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack (spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            //Divider()
            //Color.red.frame(height: 1 / UIScreen.main.scale)
        }
    }
}

struct WeatherButton: View {
    var title: String
    var body: some View {
        Text(title)
            .frame(width: 200,height: 40)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .font(.system(size: 20, weight: .medium))
            .cornerRadius(10)
    }
}
