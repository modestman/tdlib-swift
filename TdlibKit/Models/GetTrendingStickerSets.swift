//
//  GetTrendingStickerSets.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a list of trending sticker sets. For the optimal performance the number of returned sticker sets is chosen by the library
public struct GetTrendingStickerSets: Codable {

    /// The maximum number of sticker sets to be returned; must be non-negative. Fewer sticker sets may be returned than specified by the limit, even if the end of the list has not been reached
    public let limit: Int

    /// The offset from which to return the sticker sets; must be non-negative
    public let offset: Int


    public init (
        limit: Int,
        offset: Int) {

        self.limit = limit
        self.offset = offset
    }
}

