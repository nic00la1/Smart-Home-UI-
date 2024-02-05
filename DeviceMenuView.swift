//
//  DeviceMenuView.swift
//  Smart Home UI
//
//  Created by Nicola Kaleta on 05/02/2024.
//

/// Used CategoryView from other tutorial
/// https://www.youtube.com/watch?v=1_rDgSK6-Lg&ab_channel=MobileAppsAcademy
/// E Commerce App Category View In SwiftUI


import SwiftUI

var devices = ["AC", "MUSIC", "LIGHTS", "SECURITY"]

struct DeviceMenuView: View {
    var devices: [String]
    @State private var selectedCategory: Int = 0
    var action: (String) -> () // returns the selected item on click
    
    var body: some View {
        VStack(alignment: .center) {
            GeometryReader{ geo in
                ScrollView(.horizontal) {
                    VStack {
                        HStack(spacing: 10, content: {
                            ForEach(0..<devices.count, id: \.self) { i in
                                DeviceItem(isSelected: i == selectedCategory, title: devices[i])
                                    .onTapGesture {
                                        selectedCategory = i
                                        action(devices[i])
                                    }
                            }
                        })
                    }
                    .frame(width: geo.size.width)
                }.scrollIndicators(.never)
            }
            
        }
    }
}

#Preview {
    DeviceMenuView(devices: devices) { value in
        
    }
}

// This is the icon view
struct DeviceItem: View {
    var isSelected: Bool = false
    var title: String = "All"
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            RoundedRectangle(cornerRadius: 10)
                .fill(isSelected ? Color.yellow : Color.white)
                .shadow(radius: 5)
                .overlay {
                    VStack(spacing: 5){
                        Image(systemName: getDeviceIcon(deviceName: title))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(isSelected ? Color.white : Color.black)
                            .frame(width: isSelected ? 25 : 15, height: isSelected ? 25 : 15)
                        
                        Text(title)
                            .font(.system(size: 10))
                            .foregroundColor(isSelected ? Color.white : Color.black)
                            .bold(isSelected)
                    }
                }
                .frame(width: 70, height: 70)
            
            
        }
        .padding(5)
        
    }
}

// Utility func to get SF symbol name
func getDeviceIcon(deviceName: String) -> String {
    
    switch deviceName {
    case "AC":
        return "air.conditioner.horizontal.fill"
    case "MUSIC":
        return "opticaldisc.fill"
    case "LIGHTS":
        return "light.recessed"
    case "SECURITY":
        return "lock.circle"
    default:
        return "lock.circle"
    }
    
}
