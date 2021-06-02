//
//  Users.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a list of users
public struct Users: Codable {

    /// Approximate total count of users found
    public let totalCount: Int

    /// A list of user identifiers
    public let userIds: [Int]


    public init(
        totalCount: Int,
        userIds: [Int]
    ) {
        self.totalCount = totalCount
        self.userIds = userIds
    }
}

