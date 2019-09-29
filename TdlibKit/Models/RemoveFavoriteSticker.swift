//
//  RemoveFavoriteSticker.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes a sticker from the list of favorite stickers
public struct RemoveFavoriteSticker: Codable {

    /// Sticker file to delete from the list
    public let sticker: InputFile


    public init (sticker: InputFile) {
        self.sticker = sticker
    }
}

