//
//  NoteView.swift
//  RoutineApp
//
//  Created by Phillip on 21.05.2024.
//

import SwiftUI

struct NoteView: View {
    @State private var title = ""
    @State private var description = ""
    
    //    @EnvironmentObject var notes: Notes
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
                .padding(.horizontal)
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .fontWeight(.bold)
            TextField("Give your note a title", text: $description)
                .padding(.horizontal)
                .font(.system(size: 20, design: .rounded))
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button {
                    withAnimation {
//                        notes.addNote(title: title, description: description)
//                        dismiss()
                    }
                } label: {
                    Label("Add routine!", systemImage: "pencil.and.scribble")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    NoteView()
}

struct TimePicker: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
            .labelsHidden()
    }
}
