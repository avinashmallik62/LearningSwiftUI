//
//  Hike.swift
//  Hiking
//
//  Created by Avinash Kumar on 24/03/25.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
