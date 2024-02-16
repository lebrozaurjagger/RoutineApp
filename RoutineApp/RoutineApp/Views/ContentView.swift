//
//  ContentView.swift
//  RoutineApp
//
//  Created by Phillip on 14.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Rectangle()
                        .ignoresSafeArea()
                    Rectangle()
                        .foregroundColor(Color(.secondarySystemBackground))
                }
                
                ZStack {
                    VStack {
                        NavigationView {
                            List {
                                ForEach(1...3, id: \.self) { i in
                                    VStack {
                                        ListItemView()
                                    }
                                }
                            }
                        }
                        .cornerRadius(20)
                    }
                }
                .padding(.top, 200)
            }
            
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    Button {
                        withAnimation {
                            
                        }
                    } label: {
                        Label("", systemImage: "house.fill")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
