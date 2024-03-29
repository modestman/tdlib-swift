//
//  SearchInstalledStickerSets.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for installed sticker sets by looking for specified query in their title and name
public struct SearchInstalledStickerSets: Codable {

    /// Pass true to return mask sticker sets; pass false to return ordinary sticker sets
    public let isMasks: Bool?

    /// The maximum number of sticker sets to return
    public let limit: Int?

    /// Query to search for
    public let query: String?


    public init(
        isMasks: Bool?,
        limit: Int?,
        query: String?
    ) {
        self.isMasks = isMasks
        self.limit = limit
        self.query = query
    }
}

