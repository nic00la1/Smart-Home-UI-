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
            VStack {
                Title()
                
                DeviceName()
            }
            
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
    
    @ViewBuilder
    func DeviceName() -> some View {
        // UI is similar to title
        VStack(alignment: .leading) {
            HStack {
                Text("Samsung AC")
                    .font(.system(size: 28))
                    .foregroundStyle(.white)
                    .bold()
                Spacer()
            }
            
            HStack {
                Text("Connected")
                    .font(.system(size: 15))
                    .foregroundStyle(.yellow)
                    .bold()
                Spacer()
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding(.horizontal)
        .padding(.bottom, 20)
    }
}

#Preview {
    ContentView()
}
