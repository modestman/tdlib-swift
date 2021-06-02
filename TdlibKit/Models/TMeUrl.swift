//
//  TMeUrl.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a URL linking to an internal Telegram entity
public struct TMeUrl: Codable {

    /// Type of the URL
    public let type: TMeUrlType

    /// URL
    public let url: String


    public init(
        type: TMeUrlType,
        url: String
    ) {
        self.type = type
        self.url = url
    }
}

