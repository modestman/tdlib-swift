//
//  ChatPhotos.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of chat or user profile photos
public struct ChatPhotos: Codable {

    /// List of photos
    public let photos: [ChatPhoto]

    /// Total number of photos
    public let totalCount: Int


    public init (
        photos: [ChatPhoto],
        totalCount: Int) {

        self.photos = photos
        self.totalCount = totalCount
    }
}

