//
//  UploadStickerFile.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Uploads a PNG image with a sticker; for bots only; returns the uploaded file
public struct UploadStickerFile: Codable {

    /// PNG image with the sticker; must be up to 512 KB in size and fit in 512x512 square
    public let pngSticker: InputFile

    /// Sticker file owner
    public let userId: Int


    public init(
        pngSticker: InputFile,
        userId: Int
    ) {
        self.pngSticker = pngSticker
        self.userId = userId
    }
}

