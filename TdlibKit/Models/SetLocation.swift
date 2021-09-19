//
//  SetLocation.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the location of the current user. Needs to be called if GetOption("is_location_visible") is true and location changes for more than 1 kilometer
public struct SetLocation: Codable {

    /// The new location of the user
    public let location: Location?


    public init(location: Location?) {
        self.location = location
    }
}

