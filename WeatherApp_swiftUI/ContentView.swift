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
                gradient:Gradient(colors:[.blue,.white]),
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
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
