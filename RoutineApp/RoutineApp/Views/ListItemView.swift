//
//  ListItemView.swift
//  RoutineApp
//
//  Created by Phillip on 14.02.2024.
//

import SwiftUI

struct ListItemView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text ("TempName")
                    .fontWeight(.bold)
                Text ("TempDescription TempDescription TempDescription TempDescription TempDescription ")
                    .lineLimit(2)
                    .foregroundColor(Color(.systemGray))
            }
            Spacer()
            
            Button {
                withAnimation {
                    
                }
            } label: {
                Label("", systemImage: "checkmark.circle.fill")
                    .imageScale(.large)
            }
        }
    }
}

#Preview {
    ListItemView()
}
