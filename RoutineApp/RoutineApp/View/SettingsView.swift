//
//  SettingsView.swift
//  RoutineApp
//
//  Created by Phillip on 21.05.2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var confirmButton = false
    @State private var darkMode = false
    
    var body: some View {
        VStack {
            List {
                Section {
                    HStack {
                        MenuRow(title: "Dark Mode", icon: "moon.fill")
                        
                        Toggle("", isOn: $darkMode)
                    }
                }
                Section {
                    MenuRow(title: "Rate App", icon: "star.fill")
                    MenuRow(title: "Contact Us", icon: "envelope.fill")
                }
            }
            
            Button(role: .destructive, action: {
                confirmButton = true
            }, label: {
                Text("Erase All Data")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
            })
            .frame(maxWidth: .infinity)
            .padding(10)
            .background(.white)
            .cornerRadius(12)
            .padding()
            .confirmationDialog("Delete ALL data?", isPresented: $confirmButton, titleVisibility: .visible) {
                Button("Yes, delete", role: .destructive) {
                    
                }
            } message: {
                Text("Remember, you can't undo this action!")
            }
        }
        .background(Color(.secondarySystemBackground))
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding(.horizontal, 30)
        .shadow(color: Color(.systemFill), radius: 10)
    }
}

#Preview {
    SettingsView()
}

struct MenuRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20))
                .frame(width: 32, height: 32)
            
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(width: 120, alignment: .leading)
        }
    }
}
