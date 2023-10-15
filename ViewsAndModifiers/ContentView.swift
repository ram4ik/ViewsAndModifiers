//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by admin on 10/14/23.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 5))
    }
}

struct ContentView: View {
    var body: some View {
        GridStack(rows: 3, columns: 2) { _, _ in
            CustomView()
        }
    }
}

struct CustomView: View {
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
