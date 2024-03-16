//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ahsan Qureshi on 3/14/24.
//

import SwiftUI

struct BigBlue: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.blue)
            .font(.largeTitle)
            .fontWeight(.heavy)
    }
}

extension View {
    func bigBlue() -> some View {
        modifier(BigBlue())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!").bigBlue()
        }
    }
}

#Preview {
    ContentView()
}
