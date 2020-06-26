//
//  ChatLocation.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a location to which a chat is connected
public struct ChatLocation: Codable {

    /// Location address; 1-64 characters, as defined by the chat owner
    public let address: String

    /// The location
    public let location: Location


    public init (
        address: String,
        location: Location) {

        self.address = address
        self.location = location
    }
}

