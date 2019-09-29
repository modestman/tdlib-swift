//
//  PhotoSize.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Photo description
public struct PhotoSize: Codable {

    /// Photo height
    public let height: Int

    /// Information about the photo file
    public let photo: File

    /// Thumbnail type (see https://core.telegram.org/constructor/photoSize)
    public let type: String

    /// Photo width
    public let width: Int


    public init (
        height: Int,
        photo: File,
        type: String,
        width: Int) {

        self.height = height
        self.photo = photo
        self.type = type
        self.width = width
    }
}

