//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Дмитрий on 17.12.2021.
//

import SwiftUI

enum CurrentColor {
    case red, yellow, green
}
struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var currentColor: CurrentColor = .red
    
    private func changeColor() {
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        }
    }
}

extension ContentView {
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                ColorCircle(color: .red, opacity: currentColor == .red ? 1 : 0.3)
                ColorCircle(color: .yellow, opacity: currentColor == .yellow ? 1 : 0.3)
                ColorCircle(color: .green, opacity: currentColor == .green ? 1 : 0.3)
                
                Spacer()
                
                ChangeColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeColor()
                }
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
