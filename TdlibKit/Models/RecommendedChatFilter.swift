//
//  RecommendedChatFilter.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a recommended chat filter
public struct RecommendedChatFilter: Codable {

    public let description: String

    /// The chat filter
    public let filter: ChatFilter


    public init (
        description: String,
        filter: ChatFilter) {

        self.description = description
        self.filter = filter
    }
}

