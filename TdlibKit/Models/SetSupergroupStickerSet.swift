//
//  SetSupergroupStickerSet.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the sticker set of a supergroup; requires can_change_info rights
public struct SetSupergroupStickerSet: Codable {

    /// New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set
    public let stickerSetId: TdInt64

    /// Identifier of the supergroup
    public let supergroupId: Int


    public init (
        stickerSetId: TdInt64,
        supergroupId: Int) {

        self.stickerSetId = stickerSetId
        self.supergroupId = supergroupId
    }
}

