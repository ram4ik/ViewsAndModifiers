//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by admin on 10/14/23.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .background(.secondary)
            .clipShape(.rect(cornerRadius: 5))
    }
}

struct ContentView: View {
    var motto1: some View {
        Text("One")
    }
        
    var motto2: some View {
        Text("Two")
    }
    
    @ViewBuilder var motto3: some View {
        Text("Three")
    }
    
    var body: some View {
        VStack {
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
            motto3
                .foregroundStyle(.orange)
        }
        .modifier(Title())
    }
}

#Preview {
    ContentView()
}
