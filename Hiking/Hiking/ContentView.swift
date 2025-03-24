//
//  ContentView.swift
//  Hiking
//
//  Created by Avinash Kumar on 13/03/25.
//

import SwiftUI

struct ContentView: View {
    let hikes = [
        Hike(name: "Sal", photo: "sal", miles: 6),
        Hike(name: "Tam", photo: "tam", miles: 5.8),
        Hike(name: "Tom", photo: "tom", miles: 10)
    ]
    
    var body: some View {
        List(hikes) { hike in
            HStack(alignment: .top) {
                Image(hike.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .frame(width: 100)
                VStack(alignment: .leading) {
                    Text(hike.name)
                    Text("Distance: \(hike.miles.formatted()) miles")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
