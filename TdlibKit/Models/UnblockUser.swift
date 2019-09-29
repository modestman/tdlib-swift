//
//  UnblockUser.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes a user from the blacklist
public struct UnblockUser: Codable {

    /// User identifier
    public let userId: Int


    public init (userId: Int) {
        self.userId = userId
    }
}

