//
//  ProgressBarView.swift
//  RoutineApp
//
//  Created by Phillip on 23.05.2024.
//

import SwiftUI

struct ProgressBarView: View {
    var body: some View {
        VStack {
            Text("1 of 7 has done")
                .font(.system(size: 18, weight: .bold, design: .rounded))
            
            Color.white
                .frame(width: 38, height: 6)
                .cornerRadius(3)
                .frame(width: 130, height: 6, alignment: .leading)
                .background(.black.opacity(0.08))
                .cornerRadius(3)
                .frame(width: 150, height: 24)
                .background(.black.opacity(0.1))
                .cornerRadius(12)
        }
    }
}

#Preview {
    ProgressBarView()
}
