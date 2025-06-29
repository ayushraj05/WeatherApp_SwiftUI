//
//  ContentView.swift
//  WeatherApp_swiftUI
//
//  Created by Ayush Rajpal on 27/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight: Bool = false
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            VStack(spacing: 30){
                CityView(cityName: "Jaipur, Rajasthan")
                WeatherSysView(iconImage: isNight == false ? "cloud.sun.fill" : "moon.stars.fill", temperature: 38)
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "MON",
                                   temperature: 35,
                                   imageName: "cloud.fill")
                    
                    WeatherDayView(dayOfWeek: "TUE",
                                   temperature: 25,
                                   imageName: "cloud.drizzle.fill")
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   temperature: 23,
                                   imageName: "cloud.rain.fill")
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   temperature: 37,
                                   imageName: "sun.max.fill")
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   temperature: 38,
                                   imageName: "sun.max.fill")
                    
                }
                Spacer()
                Button{
                    isNight.toggle()
                    
                }label: {
                    WeatherButton(title: "Press to change",
                                  backgroundColor: .white,
                                  textColor: .black)
                }
                
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek : String
    var temperature : Int
    var imageName : String
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .medium))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temperature) °")
                .foregroundColor(.white)
                .font(.system(size: 30))
        }
    }
}

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
        LinearGradient(
            gradient:Gradient(colors:[isNight ? .black : .blue,isNight ? .gray : .lightBlue]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityView: View{
    var cityName : String
    var body: some View{
        Text("Jaipur, Rajasthan")
            .font(.system(size: 32, weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct WeatherSysView: View{
    var iconImage: String
    var temperature: Int
    var body: some View{
        VStack(spacing: 5) {
            Image(systemName: iconImage)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit )
                .frame(width: 180,height: 180)
                
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,40)
    }
}


