//
//  SectionView.swift
//  RoutineApp
//
//  Created by Phillip on 20.05.2024.
//

import SwiftUI

struct SectionView: View {
    var section: SectionCard
    var customWidth: CGFloat = 200
    var customHeight: CGFloat = 170
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [section.color1, section.color2], startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: customWidth + customWidth / 15, height: customHeight + customHeight / 15)
                .cornerRadius(25)
            
            VStack {
                VStack {
                    HStack {
                        Text(section.title)
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Text(section.emoji)
                            .font(.system(size: 40))
                    }
                }
                Text(section.description.uppercased())
                    .font(.system(size: 32, design: .rounded))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
            }
            .padding(20)
            .frame(width: customWidth, height: customHeight)
            .background(.thinMaterial.opacity(0.2))
            .cornerRadius(20)
        }
    }
}

#Preview {
    ContentView()
}
