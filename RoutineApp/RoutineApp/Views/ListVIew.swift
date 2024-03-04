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
            List {
                ForEach(1...100, id: \.self) { i in
                    NavigationLink(destination: ElementView()) {
                        VStack {
                            Text("123")
                                .bold()
                            Text("123")
                                .font(.subheadline)
                                .foregroundColor(Color(.systemGray))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ListVIew()
}
