//
//  AnimatedChatPhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Animated variant of a chat photo in MPEG4 format
public struct AnimatedChatPhoto: Codable {

    /// Information about the animation file
    public let file: File

    /// Animation width and height
    public let length: Int

    /// Timestamp of the frame, used as a static chat photo
    public let mainFrameTimestamp: Double


    public init (
        file: File,
        length: Int,
        mainFrameTimestamp: Double) {

        self.file = file
        self.length = length
        self.mainFrameTimestamp = mainFrameTimestamp
    }
}

