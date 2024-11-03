//
//  WeatherButton.swift
//  swiftUI_weather_2
//
//  Created by gülçin çetin on 3.11.2024.
//

import SwiftUI

struct WeatherButton : View {
    
    var title : String
    var textColor : Color
    var backGroundColor : Color
    
    var body: some View {
        Text(title)
            .frame(width: 300, height: 50, alignment: .center)
            .background(backGroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 32, weight: .regular, design: .default))
            .cornerRadius(37.0)
    }
}
