//
//  RecommendedChatFilters.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of recommended chat filters
public struct RecommendedChatFilters: Codable {

    /// List of recommended chat filters
    public let chatFilters: [RecommendedChatFilter]


    public init (chatFilters: [RecommendedChatFilter]) {
        self.chatFilters = chatFilters
    }
}

