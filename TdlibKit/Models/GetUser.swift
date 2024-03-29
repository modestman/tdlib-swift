//
//  GetUser.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a user by their identifier. This is an offline request if the current user is not a bot
public struct GetUser: Codable {

    /// User identifier
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

