//
//  UserProfilePhotos.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains part of the list of user photos
public struct UserProfilePhotos: Codable {

    /// A list of photos
    public let photos: [UserProfilePhoto]

    /// Total number of user profile photos
    public let totalCount: Int


    public init (
        photos: [UserProfilePhoto],
        totalCount: Int) {

        self.photos = photos
        self.totalCount = totalCount
    }
}

