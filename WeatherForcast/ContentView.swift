//
//  ContentView.swift
//  WeatherForcast
//
//  Created by Zach Shumway on 5/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", high: 70, low: 50, isRainy: false)
            
            DayForecast(day: "Tue", high: 60, low: 40, isRainy: true)
        }
        
        
        
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day).font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColoxcr)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.semibold)
                .foregroundColor(Color.secondary)
        }
        .padding()
    }
}
