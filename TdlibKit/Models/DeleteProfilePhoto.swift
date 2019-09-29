//
//  DeleteProfilePhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes a profile photo. If something changes, updateUser will be sent
public struct DeleteProfilePhoto: Codable {

    /// Identifier of the profile photo to delete
    public let profilePhotoId: String


    public init (profilePhotoId: String) {
        self.profilePhotoId = profilePhotoId
    }
}

