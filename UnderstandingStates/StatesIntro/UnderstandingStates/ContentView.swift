//
//  ContentView.swift
//  UnderstandingStates
//
//  Created by Avinash Kumar on 14/05/25.
//

import SwiftUI

struct ContentView: View {
//    @State private var count: Int = 0
//    var body: some View {
//        HStack {
//            Button("-") {
//                count = count - 1
//                if count < 0 {
//                    count = 0
//                }
//            }
//            Text("\(count)")
//                .font(.largeTitle)
//            Button("+") {
//                count = count + 1
//            }
//        }
//        .padding()
//    }
    
//    @State private var isOn: Bool = false
//    
//    var body: some View {
//        VStack {
//            Toggle(isOn: $isOn, label: {
//                Text(isOn ? "ON": "OFF").foregroundStyle(.white)
//            }).fixedSize()
//        }.frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(isOn ? .yellow: .black)
//    }
    @State private var name: String = ""
    @State private var friends: [String] = []
    
    var body: some View {
        VStack {
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    friends.append(name)
                    name = ""
                }
            List(friends, id: \.self) { friend in
                Text(friend)
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    ContentView()
}
