//
//  HikeDetailView.swift
//  Hiking
//
//  Created by Avinash Kumar on 09/04/25.
//

import SwiftUI

struct HikeDetailView: View {
    let hike: Hike
    @State private var zoomed: Bool = false
    var body: some View {
        VStack {
            Image(hike.photo)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .frame(width: 350)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .onTapGesture {
                withAnimation {
                    zoomed.toggle()
                }
            }
            
            Text(hike.name)
                .foregroundStyle(.black)
                .font(.largeTitle)
                .fontWeight(.bold)
                
            Text("Located at \(hike.miles) miles")
                .foregroundStyle(.blue)
                .font(.title2).padding(.init(20))
            
        }.navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailView(hike: Hike(name: "Tam", photo: "tam", miles: 5.8))
    }
}
