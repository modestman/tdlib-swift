//
//  BlockUser.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Adds a user to the blacklist
public struct BlockUser: Codable {

    /// User identifier
    public let userId: Int


    public init (userId: Int) {
        self.userId = userId
    }
}

