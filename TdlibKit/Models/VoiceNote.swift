//
//  VoiceNote.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel
public struct VoiceNote: Codable {

    /// Duration of the voice note, in seconds; as defined by the sender
    public let duration: Int

    /// MIME type of the file; as defined by the sender
    public let mimeType: String

    /// File containing the voice note
    public let voice: File

    /// A waveform representation of the voice note in 5-bit format
    public let waveform: Data


    public init(
        duration: Int,
        mimeType: String,
        voice: File,
        waveform: Data
    ) {
        self.duration = duration
        self.mimeType = mimeType
        self.voice = voice
        self.waveform = waveform
    }
}

