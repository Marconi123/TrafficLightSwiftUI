//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Владислав on 6.10.22.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let width: CGFloat
    let height: CGFloat
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: width, height: height)
        .background(Color(.blue))
        .cornerRadius(40)
        .overlay(
            RoundedRectangle(cornerRadius: 40, style: .continuous)
                .stroke(Color.white, lineWidth: 4)
        )
        .padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                Color.black
                ButtonView(title: "START", width: 300, height: 80, action: {})
            }
        }
    }
}
