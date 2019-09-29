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
    public let stickerSetId: String

    /// Identifier of the supergroup
    public let supergroupId: Int


    public init (
        stickerSetId: String,
        supergroupId: Int) {

        self.stickerSetId = stickerSetId
        self.supergroupId = supergroupId
    }
}

