//
//  ContentView.swift
//  RoutineApp
//
//  Created by Phillip on 14.02.2024.
//
import SwiftUI

struct ContentView: View {
    @State var presentSheet = true
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .background(.black)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            VStack(alignment: .leading) {
                Text("🏔️ Good Morning!")
                    .font(.title)
                    .bold()
                Text("23")
                    .font(.system(size: 100))
                    .bold()
                    .padding(.bottom, 60)
                Text("1/5")
                
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
            
            .sheet(isPresented: $presentSheet) {
                ListVIew()
                    .presentationDetents([.medium, .large])
                    .interactiveDismissDisabled()
            }
        }
    }
}



#Preview {
    ContentView()
}
