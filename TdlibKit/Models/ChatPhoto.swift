//
//  ChatPhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a chat or user profile photo
public struct ChatPhoto: Codable {

    /// Point in time (Unix timestamp) when the photo has been added
    public let addedDate: Int

    /// Animated variant of the photo in MPEG4 format; may be null
    public let animation: AnimatedChatPhoto?

    /// Unique photo identifier
    public let id: TdInt64

    /// Photo minithumbnail; may be null
    public let minithumbnail: Minithumbnail?

    /// Available variants of the photo in JPEG format, in different size
    public let sizes: [PhotoSize]


    public init(
        addedDate: Int,
        animation: AnimatedChatPhoto?,
        id: TdInt64,
        minithumbnail: Minithumbnail?,
        sizes: [PhotoSize]
    ) {
        self.addedDate = addedDate
        self.animation = animation
        self.id = id
        self.minithumbnail = minithumbnail
        self.sizes = sizes
    }
}

