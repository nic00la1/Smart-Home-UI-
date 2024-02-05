//
//  AnimatedBackground.swift
//  Smart Home UI
//
//  Created by Nicola Kaleta on 05/02/2024.
//

import SwiftUI

struct AnimatedBackground: View {
    @State private var startAnimation: Bool = true
    
    var body: some View {
        ZStack {
            Color.black
            LinearGradient(
                colors: [
                    .yellow.opacity(0.4),
                    .black
                ], startPoint: startAnimation ? .topLeading : .bottomLeading, endPoint: startAnimation ? .bottomTrailing : .topTrailing
            )
        }
        .ignoresSafeArea()
    }
}

#Preview {
    AnimatedBackground()
}
