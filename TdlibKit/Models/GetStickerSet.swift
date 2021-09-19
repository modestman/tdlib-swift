//
//  GetStickerSet.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a sticker set by its identifier
public struct GetStickerSet: Codable {

    /// Identifier of the sticker set
    public let setId: TdInt64?


    public init(setId: TdInt64?) {
        self.setId = setId
    }
}

