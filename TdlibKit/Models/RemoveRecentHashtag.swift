//
//  RemoveRecentHashtag.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes a hashtag from the list of recently used hashtags
public struct RemoveRecentHashtag: Codable {

    /// Hashtag to delete
    public let hashtag: String


    public init(hashtag: String) {
        self.hashtag = hashtag
    }
}

