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
            Image("digilocker")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            
            AsyncImage(url: URL(string: "https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png")!) { image in
                image.resizable()
            } placeholder: {
                ProgressView("Downloading...")
            }
            
            Text("Hello World")
                .foregroundStyle(.cyan)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding([.top, .bottom], 20)
            Text("Hi Avinash")
                .foregroundStyle(.green)
                .font(.largeTitle)
            Text("Hello SwiftUI")
                .font(.largeTitle)
                .font(.title)
            HStack(spacing: 20) {
                Text("Hello World")
                Text("Hi Avinash")
                Text("Hello SwiftUI")
            }.foregroundColor(.red).padding([.top], 20)
        }.foregroundColor(.orange).padding(25)
    }
}

#Preview {
    ContentView()
}
