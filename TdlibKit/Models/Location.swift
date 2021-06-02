//
//  Location.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a location on planet Earth
public struct Location: Codable {

    /// The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown
    public let horizontalAccuracy: Double

    /// Latitude of the location in degrees; as defined by the sender
    public let latitude: Double

    /// Longitude of the location, in degrees; as defined by the sender
    public let longitude: Double


    public init(
        horizontalAccuracy: Double,
        latitude: Double,
        longitude: Double
    ) {
        self.horizontalAccuracy = horizontalAccuracy
        self.latitude = latitude
        self.longitude = longitude
    }
}

