//
//  SearchStickers.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for stickers from public sticker sets that correspond to a given emoji
public struct SearchStickers: Codable {

    /// String representation of emoji; must be non-empty
    public let emoji: String?

    /// The maximum number of stickers to be returned
    public let limit: Int?


    public init(
        emoji: String?,
        limit: Int?
    ) {
        self.emoji = emoji
        self.limit = limit
    }
}

