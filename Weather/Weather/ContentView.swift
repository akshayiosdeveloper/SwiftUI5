//
//  ContentView.swift
//  Weather
//
//  Created by Akshay Kumar on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .background(.red)
                    .padding()
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
