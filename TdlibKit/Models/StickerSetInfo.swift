//
//  StickerSetInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents short information about a sticker set
public struct StickerSetInfo: Codable {

    /// Contains up to the first 5 stickers from the set, depending on the context. If the client needs more stickers the full set should be requested
    public let covers: [Sticker]

    /// Identifier of the sticker set
    public let id: TdInt64

    /// True, is the stickers in the set are animated
    public let isAnimated: Bool

    /// True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
    public let isArchived: Bool

    /// True, if the sticker set has been installed by current user
    public let isInstalled: Bool

    /// True, if the stickers in the set are masks
    public let isMasks: Bool

    /// True, if the sticker set is official
    public let isOfficial: Bool

    /// True for already viewed trending sticker sets
    public let isViewed: Bool

    /// Name of the sticker set
    public let name: String

    /// Total number of stickers in the set
    public let size: Int

    /// Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null
    public let thumbnail: Thumbnail?

    /// Title of the sticker set
    public let title: String


    public init (
        covers: [Sticker],
        id: TdInt64,
        isAnimated: Bool,
        isArchived: Bool,
        isInstalled: Bool,
        isMasks: Bool,
        isOfficial: Bool,
        isViewed: Bool,
        name: String,
        size: Int,
        thumbnail: Thumbnail?,
        title: String) {

        self.covers = covers
        self.id = id
        self.isAnimated = isAnimated
        self.isArchived = isArchived
        self.isInstalled = isInstalled
        self.isMasks = isMasks
        self.isOfficial = isOfficial
        self.isViewed = isViewed
        self.name = name
        self.size = size
        self.thumbnail = thumbnail
        self.title = title
    }
}

