//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Сампилов Ильдар on 10.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
    
    let color: Color
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .green)
    }
}
 
