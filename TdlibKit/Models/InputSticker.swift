//
//  InputSticker.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a sticker that should be added to a sticker set
public struct InputSticker: Codable {

    /// Emoji corresponding to the sticker
    public let emojis: String

    /// For masks, position where the mask should be placed; may be null
    public let maskPosition: MaskPosition?

    /// PNG image with the sticker; must be up to 512 kB in size and fit in a 512x512 square
    public let pngSticker: InputFile


    public init (
        emojis: String,
        maskPosition: MaskPosition?,
        pngSticker: InputFile) {

        self.emojis = emojis
        self.maskPosition = maskPosition
        self.pngSticker = pngSticker
    }
}

