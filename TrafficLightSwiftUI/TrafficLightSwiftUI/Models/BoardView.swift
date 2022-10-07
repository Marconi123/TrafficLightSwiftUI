//
//  BoardView.swift
//  TrafficLightSwiftUI
//
//  Created by Владислав on 6.10.22.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        Rectangle().frame(width: 250, height: 550).cornerRadius(100)
            .foregroundColor(.gray)
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
