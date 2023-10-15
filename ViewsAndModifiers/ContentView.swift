//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by admin on 10/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var userRedText = false
    
    var body: some View {
        Button("Hello, World") {
            userRedText.toggle()
        }
        .foregroundStyle(userRedText ? .red : .blue)
    }
}

#Preview {
    ContentView()
}
