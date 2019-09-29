//
//  Audio.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes an audio file. Audio is usually in MP3 format
public struct Audio: Codable {

    /// The minithumbnail of the album cover; may be null
    public let albumCoverMinithumbnail: Minithumbnail?

    /// The thumbnail of the album cover; as defined by the sender. The full size thumbnail should be extracted from the downloaded file; may be null
    public let albumCoverThumbnail: PhotoSize?

    /// File containing the audio
    public let audio: File

    /// Duration of the audio, in seconds; as defined by the sender
    public let duration: Int

    /// Original name of the file; as defined by the sender
    public let fileName: String

    /// The MIME type of the file; as defined by the sender
    public let mimeType: String

    /// Performer of the audio; as defined by the sender
    public let performer: String

    /// Title of the audio; as defined by the sender
    public let title: String


    public init (
        albumCoverMinithumbnail: Minithumbnail?,
        albumCoverThumbnail: PhotoSize?,
        audio: File,
        duration: Int,
        fileName: String,
        mimeType: String,
        performer: String,
        title: String) {

        self.albumCoverMinithumbnail = albumCoverMinithumbnail
        self.albumCoverThumbnail = albumCoverThumbnail
        self.audio = audio
        self.duration = duration
        self.fileName = fileName
        self.mimeType = mimeType
        self.performer = performer
        self.title = title
    }
}

