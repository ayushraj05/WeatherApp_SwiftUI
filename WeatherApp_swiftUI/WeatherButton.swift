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
                .background(backgroundColor.gradient)
                .cornerRadius(25)
                .font(.system(size: 20,weight: .bold))
            
    }
}	

struct WeatherButton_Preview: PreviewProvider{
    static var previews: some View{
        WeatherButton(title: "Button", backgroundColor: .blue, textColor: .white)
    }
}
