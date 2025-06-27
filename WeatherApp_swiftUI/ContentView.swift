//
//  ContentView.swift
//  WeatherApp_swiftUI
//
//  Created by Ayush Rajpal on 27/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient:Gradient(colors:[.blue,.lightBlue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Jaipur, Rajasthan")
                    .font(.system(size: 32, weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 5) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit )
                        .frame(width: 180,height: 180)
                        
                    Text("38°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
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
