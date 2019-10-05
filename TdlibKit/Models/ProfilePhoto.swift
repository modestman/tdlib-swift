//
//  ProfilePhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a user profile photo
public struct ProfilePhoto: Codable {

    /// A big (640x640) user profile photo. The file can be downloaded only before the photo is changed
    public let big: File

    /// Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of userProfilePhotos
    public let id: TdInt64

    /// A small (160x160) user profile photo. The file can be downloaded only before the photo is changed
    public let small: File


    public init (
        big: File,
        id: TdInt64,
        small: File) {

        self.big = big
        self.id = id
        self.small = small
    }
}

