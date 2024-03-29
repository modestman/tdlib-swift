//
//  SetStickerSetThumbnail.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sets a sticker set thumbnail; for bots only. Returns the sticker set
public struct SetStickerSetThumbnail: Codable {

    /// Sticker set name
    public let name: String?

    /// Thumbnail to set in PNG or TGS format; pass null to remove the sticker set thumbnail. Animated thumbnail must be set for animated sticker sets and only for them
    public let thumbnail: InputFile?

    /// Sticker set owner
    public let userId: Int64?


    public init(
        name: String?,
        thumbnail: InputFile?,
        userId: Int64?
    ) {
        self.name = name
        self.thumbnail = thumbnail
        self.userId = userId
    }
}

