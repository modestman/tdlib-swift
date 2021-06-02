//
//  SearchHashtags.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for recently used hashtags by their prefix
public struct SearchHashtags: Codable {

    /// The maximum number of hashtags to be returned
    public let limit: Int

    /// Hashtag prefix to search for
    public let prefix: String


    public init(
        limit: Int,
        prefix: String
    ) {
        self.limit = limit
        self.prefix = prefix
    }
}

