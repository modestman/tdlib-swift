//
//  SetStickerPositionInSet.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot
public struct SetStickerPositionInSet: Codable {

    /// New position of the sticker in the set, zero-based
    public let position: Int

    /// Sticker
    public let sticker: InputFile


    public init (
        position: Int,
        sticker: InputFile) {

        self.position = position
        self.sticker = sticker
    }
}

