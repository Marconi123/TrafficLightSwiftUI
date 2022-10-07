//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Владислав on 6.10.22.
//

import SwiftUI

struct CircleView: View {
    
    var color: Color
    var opacity: Double

    var body: some View {
        Circle().foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .frame(width: 150, height: 150)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .green, opacity: 0.4)
    }
}
