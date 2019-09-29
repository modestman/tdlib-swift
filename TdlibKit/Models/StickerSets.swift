//
//  StickerSets.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a list of sticker sets
public struct StickerSets: Codable {

    /// List of sticker sets
    public let sets: [StickerSetInfo]

    /// Approximate total number of sticker sets found
    public let totalCount: Int


    public init (
        sets: [StickerSetInfo],
        totalCount: Int) {

        self.sets = sets
        self.totalCount = totalCount
    }
}

