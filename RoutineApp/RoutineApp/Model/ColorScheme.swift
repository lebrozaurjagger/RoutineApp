//
//  ColorScheme.swift
//  RoutineApp
//
//  Created by Phillip on 10.05.2024.
//

import Foundation
import SwiftUI

struct ColorScheme: View {
    var body: some View {
        ScrollView {
            ColorExample(color1: .gradientColorPurple, color2: .gradientColorBlue)
            ColorExample(color1: .gradientColorBlue, color2: .gradientColorGreen)
            ColorExample(color1: .gradientColorYellow, color2: .gradientColorGold)
            ColorExample(color1: .gradientColorPink, color2: .gradientColorYellow)
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ColorScheme()
}



struct ColorExample: View {
    @State var color1: Color
    @State var color2: Color
    
    var body: some View {
        LinearGradient(colors: [color1, color2], startPoint: .leading, endPoint: .trailing)
            .frame(height: 40)
            .padding(.vertical, 1)
    }
}

extension Color {
    public static var gradientColorPurple: Color {
        return Color(UIColor(red: 142/255, green: 68/255, blue: 173/255, alpha: 1.0))
    }
    public static var gradientColorBlue: Color {
        return Color(UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0))
    }
    public static var gradientColorGreen: Color {
        return Color(UIColor(red: 46/255, green: 204/255, blue: 113/255, alpha: 1.0))
    }
    public static var gradientColorYellow: Color {
        return Color(UIColor(red: 244/255, green: 208/255, blue: 63/255, alpha: 1.0))
    }
    public static var gradientColorGold: Color {
        return Color(UIColor(red: 241/255, green: 204/255, blue: 113/255, alpha: 1.0))
    }
    public static var gradientColorPink: Color {
        return Color(UIColor(red: 241/255, green: 148/255, blue: 138/255, alpha: 1.0))
    }
}
