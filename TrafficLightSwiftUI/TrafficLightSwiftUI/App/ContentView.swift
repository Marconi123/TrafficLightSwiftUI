//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Владислав on 4.10.22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @State private var buttonTitle = "START"
    @State private var trafficLightColors = TrafficLightColors.red
    
    // MARK: - Enum
    
    enum TrafficLightColors {
        case red
        case yellowRed
        case green
        case yellow
    }
    
    // MARK: - Private functions
    
    private func changeColors() {
        switch trafficLightColors {
        case .red: trafficLightColors = .yellowRed
            buttonTitle = "NEXT"
        case .yellowRed: trafficLightColors = .green
        case .green: trafficLightColors = .yellow
        case .yellow: trafficLightColors = .red
            buttonTitle = "START"
        }
    }
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                CircleView(color: .red,
                           opacity: (trafficLightColors == .red || trafficLightColors == .yellowRed) ? 1 : 0.2)
                CircleView(color: .yellow,
                           opacity: (trafficLightColors == .yellowRed || trafficLightColors == .yellow) ? 1 : 0.2)
                CircleView(color: .green,
                           opacity: (trafficLightColors == .green) ? 1 : 0.2)
                VStack {
                    ButtonView(title: buttonTitle, width: 300, height: 80) {
                        buttonTitle = "NEXT"
                        changeColors()
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
    
    // MARK: - Preview
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
