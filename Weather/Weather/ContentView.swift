//
//  ContentView.swift
//  Weather
//
//  Created by Akshay Kumar on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32,weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing:8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    Text("76°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack(spacing:8) {
                    WeatherView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: "44°")
                    WeatherView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: "50°")
                    WeatherView(dayOfWeek: "WED", imageName: "wind.snow", temperature: "-3°")
                    WeatherView(dayOfWeek: "THU", imageName: "sunset.fill", temperature: "12°")
                    WeatherView(dayOfWeek: "FRI", imageName: "cloud.rain.fill", temperature: "5°")
                    WeatherView(dayOfWeek: "SAT", imageName: "snow", temperature: "76°")
                }
                Spacer()
                
                Button(action: {
                    print("Button clicked")
                }, label: {
                    Text("Change the button")
                        .frame(width: 280,height: 50)
                        .background(.white)
                })
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: String
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text(temperature)
                .font(.system(size: 30,weight: .medium))
                .foregroundColor(.white)
        }
    }
}
