//
//  Landmark.swift
//  LandMarks
//
//  Created by Xinghang Xu on 12/17/20.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D (
            latitude: coordinates.latitude,
            longitude: coordinates.longitide)
        }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitide: Double
    }
}
