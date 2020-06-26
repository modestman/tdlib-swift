//
//  GetBlockedUsers.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns users that were blocked by the current user
public struct GetBlockedUsers: Codable {

    /// The maximum number of users to return; up to 100
    public let limit: Int

    /// Number of users to skip in the result; must be non-negative
    public let offset: Int


    public init (
        limit: Int,
        offset: Int) {

        self.limit = limit
        self.offset = offset
    }
}

