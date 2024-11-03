//
//  ContentView.swift
//  swiftUI_weather
//
//  Created by gülçin çetin on 27.10.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightblue"))
            VStack {
                CityTextView(cityName: "Ankara, Turkey")
                
                MainWeatherStatusView(imageName: "snow",
                                      temperature: 10 )
                
                HStack(spacing: 30) {
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.fill", temperature: 15)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "sun.max.fill", temperature: 20)
                    WeatherDayView(dayOfWeek: "Thu", imageName: "cloud.rain.fill", temperature: 18)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "snow", temperature: -5)
                    WeatherDayView(dayOfWeek: "Sat", imageName: "wind", temperature: 10)
                }
                Spacer()
                Button{
                    print("tapped !")
                } label: {
                    WeatherButton(title : "Change the Daytime",
                                  textColor: .white,
                                  backGroundColor: .cyan
                    )
                }
                Spacer()
            }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct WeatherDayView: View {
        var dayOfWeek : String
        var imageName :String
        var temperature : Int
        
        var body: some View {
            VStack {
                Text(dayOfWeek)
                    .font(.system(size: 30, weight: .medium , design: .default))
                    .foregroundColor(.white)
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    . aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 30)
                Text("\(temperature)")
                    .font(.system(size: 30, weight: .medium))
                    .foregroundColor(.white)
            }
        }
    }

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView : View {
    var cityName : String
     
    var body : some View{
        Text(cityName)
            .font(.system(size: 32, weight: .regular , design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView : View {
    
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack(spacing : 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text ("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}


















