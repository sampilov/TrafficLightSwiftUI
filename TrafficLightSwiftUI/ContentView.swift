//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Сампилов Ильдар on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    private enum ActiveColor {
        case red
        case yellow
        case green
    }
    @State private var activeColor: ActiveColor = .green
    @State private var redViewOpacity = 0.3
    @State private var yellowViewOpacity = 0.3
    @State private var greenViewOpacity = 0.3

    private var buttonNext: some View {
        Button(action: buttonDidTapped) {
            Text("NEXT")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.all)

        }
        .background(Color.brown)
    }

    var body: some View {
        VStack {
            ColorCircleView(color: .red.opacity(redViewOpacity))
                .padding(.top, 30)
            ColorCircleView(color: .yellow.opacity(yellowViewOpacity))
            ColorCircleView(color: .green.opacity(greenViewOpacity))
            Spacer()
            buttonNext
        }
        .padding()
    }
    
    private func buttonDidTapped() {
        switch activeColor {
        case .red:
            yellowViewOpacity = 1
            greenViewOpacity = 0.3
            redViewOpacity = 0.3
            activeColor = .yellow
        case .yellow:
            yellowViewOpacity = 0.3
            greenViewOpacity = 1
            redViewOpacity = 0.3
            activeColor = .green
        case .green:
            yellowViewOpacity = 0.3
            greenViewOpacity = 0.3
            redViewOpacity = 1
            activeColor = .red
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
