//
//  SetProfilePhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Uploads a new profile photo for the current user. If something changes, updateUser will be sent
public struct SetProfilePhoto: Codable {

    /// Profile photo to set. inputFileId and inputFileRemote may still be unsupported
    public let photo: InputFile


    public init (photo: InputFile) {
        self.photo = photo
    }
}

