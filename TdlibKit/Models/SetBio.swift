//
//  SetBio.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the bio of the current user
public struct SetBio: Codable {

    /// The new value of the user bio; 0-70 characters without line feeds
    public let bio: String


    public init(bio: String) {
        self.bio = bio
    }
}

