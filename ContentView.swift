//
//  ContentView.swift
//  Smart Home UI
//
//  Created by Nicola Kaleta on 05/02/2024.
// Smart UI HOME using SwiftUI - which include:
///  1. Animated Background
///  2. Device Menu
///  3. Circular Slider Control

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            AnimatedBackground()
            Title()
            
        }
        .ignoresSafeArea()
    }
    
    @ViewBuilder
    func Title() -> some View {
        VStack {
            VStack(alignment: .leading, content: {
                HStack {
                    Text("BEDROM")
                        .foregroundStyle(.white)
                        .font(.system(size: 28))
                        .bold()
                    
                    Spacer()
                }
                .padding(.bottom, 10)
                
                HStack {
                    Text("TOTAL 4 ACTIVE DEVICES")
                        .foregroundStyle(.yellow)
                        .font(.system(size: 10))
                        .bold()
                    
                    Spacer()
                }
            })
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
