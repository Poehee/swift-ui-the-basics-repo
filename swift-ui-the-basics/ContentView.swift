//
//  ContentView.swift
//  swift-ui-the-basics
//
//  Created by Bart Verstegen on 17/06/2024.
//
import SwiftUI

struct WeatherDayInfo {
  var dayOfWeek: String
  var imageName: String
  var temperature: Int
}

let tue = WeatherDayInfo(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 70)
let wed = WeatherDayInfo(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 70)
let thu = WeatherDayInfo(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55)
let fri = WeatherDayInfo(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 40)
let sat = WeatherDayInfo(dayOfWeek: "SAT", imageName: "snow", temperature: 25)

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                
                CityNameView(cityName: "Cupertino CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 70)
                Spacer()
                HStack(spacing: 25) {
                    WeatherDayView(wdi: tue)
                    WeatherDayView(wdi: wed)
                    WeatherDayView(wdi: thu)
                    WeatherDayView(wdi: fri)
                    WeatherDayView(wdi: sat)
                }
                Spacer()
                Button {
                    isNight.toggle()
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
    var wdi : WeatherDayInfo
    var body: some View {
        VStack {
            Text(wdi.dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: wdi.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(wdi.temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var isNight: Bool
    //var topColor: Color
    //var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, .lightblue]),
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
