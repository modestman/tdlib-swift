//
//  GetStickerEmojis.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns emoji corresponding to a sticker. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
public struct GetStickerEmojis: Codable {

    /// Sticker file identifier
    public let sticker: InputFile


    public init(sticker: InputFile) {
        self.sticker = sticker
    }
}

