//
//  LandMark.swift
//  Landmarks
//
//  Created by Raramuri on 29/07/24.
//

import Foundation
import SwiftUI
import CoreLocation



struct LandMark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    var category: Category
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
        
    }
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinates: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}
