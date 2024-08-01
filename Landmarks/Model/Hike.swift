//
//  Hike.swift
//  Landmarks
//
//  Created by Raramuri on 31/07/24.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    struct Observation: Codable, Hashable {
    }
}
