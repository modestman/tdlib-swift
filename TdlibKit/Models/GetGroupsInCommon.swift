//
//  GetGroupsInCommon.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a list of common group chats with a given user. Chats are sorted by their type and creation date
public struct GetGroupsInCommon: Codable {

    /// The maximum number of chats to be returned; up to 100
    public let limit: Int

    /// Chat identifier starting from which to return chats; use 0 for the first request
    public let offsetChatId: Int64

    /// User identifier
    public let userId: Int


    public init(
        limit: Int,
        offsetChatId: Int64,
        userId: Int
    ) {
        self.limit = limit
        self.offsetChatId = offsetChatId
        self.userId = userId
    }
}

