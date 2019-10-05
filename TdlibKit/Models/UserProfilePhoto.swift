//
//  UserProfilePhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains full information about a user profile photo
public struct UserProfilePhoto: Codable {

    /// Point in time (Unix timestamp) when the photo has been added
    public let addedDate: Int

    /// Unique user profile photo identifier
    public let id: TdInt64

    /// Available variants of the user photo, in different sizes
    public let sizes: [PhotoSize]


    public init (
        addedDate: Int,
        id: TdInt64,
        sizes: [PhotoSize]) {

        self.addedDate = addedDate
        self.id = id
        self.sizes = sizes
    }
}

