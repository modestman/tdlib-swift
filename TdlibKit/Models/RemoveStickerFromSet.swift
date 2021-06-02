//
//  RemoveStickerFromSet.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot
public struct RemoveStickerFromSet: Codable {

    /// Sticker
    public let sticker: InputFile


    public init(sticker: InputFile) {
        self.sticker = sticker
    }
}

