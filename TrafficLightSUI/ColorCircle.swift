//
//  ColorCircle.swift
//  TrafficLightSUI
//
//  Created by Дмитрий on 17.12.2021.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1)
    }
}
