//
//  Animation.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes an animation file. The animation must be encoded in GIF or MPEG4 format
public struct Animation: Codable {

    /// File containing the animation
    public let animation: File

    /// Duration of the animation, in seconds; as defined by the sender
    public let duration: Int

    /// Original name of the file; as defined by the sender
    public let fileName: String

    /// Height of the animation
    public let height: Int

    /// MIME type of the file, usually "image/gif" or "video/mp4"
    public let mimeType: String

    /// Animation minithumbnail; may be null
    public let minithumbnail: Minithumbnail?

    /// Animation thumbnail; may be null
    public let thumbnail: PhotoSize?

    /// Width of the animation
    public let width: Int


    public init (
        animation: File,
        duration: Int,
        fileName: String,
        height: Int,
        mimeType: String,
        minithumbnail: Minithumbnail?,
        thumbnail: PhotoSize?,
        width: Int) {

        self.animation = animation
        self.duration = duration
        self.fileName = fileName
        self.height = height
        self.mimeType = mimeType
        self.minithumbnail = minithumbnail
        self.thumbnail = thumbnail
        self.width = width
    }
}

