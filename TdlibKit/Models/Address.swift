//
//  Address.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes an address
public struct Address: Codable {

    /// City
    public let city: String

    /// A two-letter ISO 3166-1 alpha-2 country code
    public let countryCode: String

    /// Address postal code
    public let postalCode: String

    /// State, if applicable
    public let state: String

    /// First line of the address
    public let streetLine1: String

    /// Second line of the address
    public let streetLine2: String


    public init(
        city: String,
        countryCode: String,
        postalCode: String,
        state: String,
        streetLine1: String,
        streetLine2: String
    ) {
        self.city = city
        self.countryCode = countryCode
        self.postalCode = postalCode
        self.state = state
        self.streetLine1 = streetLine1
        self.streetLine2 = streetLine2
    }
}

