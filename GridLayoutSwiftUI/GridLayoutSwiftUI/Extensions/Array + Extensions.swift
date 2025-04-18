//
//  Array + Extensions.swift
//  GridLayoutSwiftUI
//
//  Created by Avinash Kumar on 18/04/25.
//

import Foundation

extension Array {
    func chunks(size: Int) -> [[Element]] {
        stride(from: 0, to: self.count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, self.count)])
        }
    }
}
