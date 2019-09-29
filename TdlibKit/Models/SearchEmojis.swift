//
//  SearchEmojis.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for emojis by keywords. Supported only if the file database is enabled
public struct SearchEmojis: Codable {

    /// True, if only emojis, which exactly match text needs to be returned
    public let exactMatch: Bool

    /// Text to search for
    public let text: String


    public init (
        exactMatch: Bool,
        text: String) {

        self.exactMatch = exactMatch
        self.text = text
    }
}

