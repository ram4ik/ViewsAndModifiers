//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by admin on 10/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Hello, World") {
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.red)
    }
}

#Preview {
    ContentView()
}
