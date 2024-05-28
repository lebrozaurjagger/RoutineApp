//
//  ListVIew.swift
//  RoutineApp
//
//  Created by Phillip on 04.03.2024.
//

import SwiftUI

struct ListVIew: View {
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    Section(header: Text("next")) {
                        ListElement(elementTitle: "Vitamin B-12",
                                    elementDesc: "After meal in the morning!",
                                    time: "14:30",
                                    addCounter: 1,
                                    isDone: false)
                    }
                    
                    Section(header: Text("today")) {
                        ListElement(elementTitle: "Piercing", 
                                    elementDesc: "Clean with chlorhexidine",
                                    time: "14:30",
                                    addCounter: 2,
                                    isDone: false)
                        ListElement(elementTitle: "gfdgsd", 
                                    elementDesc: "fgsd",
                                    time: "14:30",
                                    addCounter: 1,
                                    isDone: false)
                        ListElement(elementTitle: "Vitamin B-12", 
                                    elementDesc: "After meal in the morning!",
                                    time: "14:30",
                                    addCounter: 3,
                                    isDone: false)
                    }
                    
                    Section(header: Text("completed")) {
                        ListElement(elementTitle: "Vitamin B-12",
                                    elementDesc: "After meal in the morning!",
                                    time: "14:30",
                                    addCounter: 3,
                                    isDone: true)
                        ListElement(elementTitle: "Vitamin B-12", 
                                    elementDesc: "After meal in the morning!",
                                    time: "14:30",
                                    addCounter: 1,
                                    isDone: true)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}



struct ListElement: View {
    @State var elementTitle: String
    @State var elementDesc: String
    @State var time: String
    @State var addCounter: Int
    @State var isDone: Bool
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(elementTitle)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .shadow(color: Color(.systemGray5), radius: 2)
                
                Text(elementDesc)
                    .shadow(color: Color(.systemGray5), radius: 2)
                    .font(.system(size: 18, design: .rounded))
                    .padding(.bottom, 2)
                
                Text(time)
                    .shadow(color: Color(.systemGray5), radius: 2)
                    .font(.system(size: 14, design: .rounded))
                    .foregroundColor(Color(.systemGray2))
                
            }
            
            Spacer()
            
            ForEach(0..<addCounter - 1) { item in
                LinearGradient(colors: [Color(.systemGray6), Color(.systemGray4)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .mask(Circle())
                    .frame(width: 10)
                    .shadow(color: Color(.systemGray6), radius: 2)
            }
            
            Button(action: {
                
            }, label: {
                ZStack {
                    LinearGradient(colors: [Color(.systemGray6), Color(.systemGray4)], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .mask(Circle())
                        .frame(width: 40)
                        .shadow(color: Color(.systemGray6), radius: 2)
                    
                    Circle()
                        .foregroundColor(.clear)
                        .frame(width: 32)
                        .background(.thinMaterial)
                        .mask(Circle())
                    Image(systemName: "checkmark")
                        .font(.system(size: 16, weight: .black))
                        .foregroundColor(Color(.systemGray3))
                }
            })
        }
    }
}
