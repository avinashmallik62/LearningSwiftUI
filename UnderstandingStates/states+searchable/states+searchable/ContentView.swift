//
//  ContentView.swift
//  states+searchable
//
//  Created by Avinash Kumar on 14/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [String] = ["Mike", "Nike", "Neha", "Hike", "Avinash", "Kite"]
    @State private var search: String = ""
    @State private var filteredFriends: [String] = []
    
    var body: some View {
        VStack {
            List(filteredFriends, id: \.self) { friend in
                Text(friend)
            }.listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search, { //fires whenever there is change
                if search.isEmpty {
                    filteredFriends = friends
                } else {
                    filteredFriends = friends.filter { $0.contains(search)}
                }
            })
            .navigationTitle("Friends")
        }
        .onAppear(perform: { // on initial load of view
            filteredFriends = friends
        })
        .padding()
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
