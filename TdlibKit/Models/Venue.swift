//
//  Venue.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a venue
public struct Venue: Codable {

    /// Venue address; as defined by the sender
    public let address: String

    /// Identifier of the venue in the provider database; as defined by the sender
    public let id: String

    /// Venue location; as defined by the sender
    public let location: Location

    /// Provider of the venue database; as defined by the sender. Currently only "foursquare" and "gplaces" (Google Places) need to be supported
    public let provider: String

    /// Venue name; as defined by the sender
    public let title: String

    /// Type of the venue in the provider database; as defined by the sender
    public let type: String


    public init(
        address: String,
        id: String,
        location: Location,
        provider: String,
        title: String,
        type: String
    ) {
        self.address = address
        self.id = id
        self.location = location
        self.provider = provider
        self.title = title
        self.type = type
    }
}

