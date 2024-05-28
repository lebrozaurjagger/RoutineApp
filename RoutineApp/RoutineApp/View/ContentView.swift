//
//  ContentView.swift
//  RoutineApp
//
//  Created by Phillip on 04.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State var showSettings = false
    @State var showNewNote = false
    
    @State var viewState = CGSize.zero
    
    var body: some View {
        let blurRadius = if showSettings == true { 2.0 } else { 0.0 }
        let blackOut = if showSettings == true { 0.1 } else { 0.0 }
        
        NavigationView {
            ZStack(alignment: .leading) {
                //            Background:
                Color.black
                    .ignoresSafeArea()
                
                //            View Body:
                ZStack {
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(sectionData) { item in
                                    GeometryReader { geometry in
                                        SectionView(section: item)
                                            .rotation3DEffect(
                                                Angle(degrees: Double(geometry.frame(in: .global).minX - 30) / -20),
                                                axis: (x: 0.0, y: 10.0, z: 0.0)
                                            )
                                    }
                                }
                                .frame(width: 200, height: 200)
                            }
                            .padding(20)
                        }
                        
                        Spacer()
                    }
                    
                    VStack {
                        Spacer()
                        
                        ListVIew()
                            .frame(height: 500)
                            .mask(
                                RoundedRectangle(cornerRadius: 10)
                                    .ignoresSafeArea(.all)
                            )
                    }
                }
                .blur(radius: blurRadius)
                .offset(y: showSettings ? -450 : 0)
                .rotation3DEffect(Angle(degrees: showSettings ? -10 : 0), axis: (x: 10, y: 0, z: 0))
                .scaleEffect(showSettings ? 0.9 : 1)
                
                Rectangle()
                    .foregroundColor(.black.opacity(blackOut))
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0)) {
                            self.showSettings.toggle()
                        }
                    }
                
                VStack {
                    Spacer()
                    
                    SettingsView()
                        .background(Color.black.opacity(0.001))
                        .offset(y: showSettings ? 0 : 1000)
                }
            }
            
            .sheet(isPresented: $showNewNote, content: {
                NoteView()
                    .padding(.top, 20)
                    .presentationDragIndicator(.visible)
                    .presentationBackground(Color(.secondarySystemBackground))
            })
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0)) {
                            self.showSettings.toggle()
                        }
                    }, label: {
                        Image(systemName: "gear")
                            .fontWeight(.bold)
                    })
                    .opacity(showSettings ? 0.0 : 1.0)
                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Text("Edit")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                    })
                    .opacity(showSettings ? 0.0 : 1.0)
                    
                    Button(action: {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0)) {
                            self.showNewNote.toggle()
                        }
                    }, label: {
                        Image(systemName: "pencil.and.scribble")
                            .fontWeight(.bold)
                    })
                    .opacity(showSettings ? 0.0 : 1.0)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
