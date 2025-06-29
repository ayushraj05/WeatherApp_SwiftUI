//
//  WeatherButton.swift
//  WeatherApp_swiftUI
//
//  Created by Ayush Rajpal on 29/06/25.
//

import SwiftUI

struct WeatherButton: View{
    var title: String
    var backgroundColor: Color
    var textColor: Color
    var body: some View{
            Text(title)
                .foregroundColor(textColor)
                .frame(width: 280,height: 50)
                .background(backgroundColor)
                .cornerRadius(25)
                .font(.system(size: 20,weight: .bold))
            
    }
}
