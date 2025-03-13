//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Avinash Kumar on 13/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("Hello World")
                .foregroundStyle(.cyan)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text("Hi Avinash")
                .foregroundStyle(.green)
            Text("Hello SwiftUI")
            HStack(spacing: 20) {
                Text("Hello World")
                Text("Hi Avinash")
                Text("Hello SwiftUI")
            }.foregroundColor(.red)
        }.foregroundColor(.orange)
    }
}

#Preview {
    ContentView()
}
