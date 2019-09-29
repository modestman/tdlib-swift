//
//  SearchStickerSet.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for a sticker set by its name
public struct SearchStickerSet: Codable {

    /// Name of the sticker set
    public let name: String


    public init (name: String) {
        self.name = name
    }
}

