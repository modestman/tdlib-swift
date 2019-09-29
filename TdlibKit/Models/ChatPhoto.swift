//
//  ChatPhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes the photo of a chat
public struct ChatPhoto: Codable {

    /// A big (640x640) chat photo. The file can be downloaded only before the photo is changed
    public let big: File

    /// A small (160x160) chat photo. The file can be downloaded only before the photo is changed
    public let small: File


    public init (
        big: File,
        small: File) {

        self.big = big
        self.small = small
    }
}

