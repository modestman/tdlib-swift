//
//  AnimatedEmoji.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes an animated representation of an emoji
public struct AnimatedEmoji: Codable {

    /// Emoji modifier fitzpatrick type; 0-6; 0 if none
    public let fitzpatrickType: Int

    /// File containing the sound to be played when the animated emoji is clicked if any; may be null. The sound is encoded with the Opus codec, and stored inside an OGG container
    public let sound: File?

    /// Animated sticker for the emoji
    public let sticker: Sticker


    public init(
        fitzpatrickType: Int,
        sound: File?,
        sticker: Sticker
    ) {
        self.fitzpatrickType = fitzpatrickType
        self.sound = sound
        self.sticker = sticker
    }
}

