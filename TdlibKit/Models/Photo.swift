//
//  Photo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a photo
public struct Photo: Codable {

    /// True, if stickers were added to the photo
    public let hasStickers: Bool

    /// Photo minithumbnail; may be null
    public let minithumbnail: Minithumbnail?

    /// Available variants of the photo, in different sizes
    public let sizes: [PhotoSize]


    public init (
        hasStickers: Bool,
        minithumbnail: Minithumbnail?,
        sizes: [PhotoSize]) {

        self.hasStickers = hasStickers
        self.minithumbnail = minithumbnail
        self.sizes = sizes
    }
}

