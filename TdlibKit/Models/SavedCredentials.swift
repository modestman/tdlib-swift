//
//  SavedCredentials.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about saved card credentials
public struct SavedCredentials: Codable {

    /// Unique identifier of the saved credentials
    public let id: String

    /// Title of the saved credentials
    public let title: String


    public init (
        id: String,
        title: String) {

        self.id = id
        self.title = title
    }
}

