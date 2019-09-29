//
//  Location.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a location on planet Earth
public struct Location: Codable {

    /// Latitude of the location in degrees; as defined by the sender
    public let latitude: Double

    /// Longitude of the location, in degrees; as defined by the sender
    public let longitude: Double


    public init (
        latitude: Double,
        longitude: Double) {

        self.latitude = latitude
        self.longitude = longitude
    }
}

