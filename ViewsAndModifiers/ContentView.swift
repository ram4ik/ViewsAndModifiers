//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by admin on 10/14/23.
//

import SwiftUI

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
    }
}

#Preview {
    ContentView()
}
