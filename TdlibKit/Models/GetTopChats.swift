//
//  GetTopChats.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a list of frequently used chats. Supported only if the chat info database is enabled
public struct GetTopChats: Codable {

    /// Category of chats to be returned
    public let category: TopChatCategory

    /// Maximum number of chats to be returned; up to 30
    public let limit: Int


    public init (
        category: TopChatCategory,
        limit: Int) {

        self.category = category
        self.limit = limit
    }
}

