//
//  DeleteProfilePhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes a profile photo
public struct DeleteProfilePhoto: Codable {

    /// Identifier of the profile photo to delete
    public let profilePhotoId: TdInt64


    public init (profilePhotoId: TdInt64) {
        self.profilePhotoId = profilePhotoId
    }
}

