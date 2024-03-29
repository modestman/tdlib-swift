//
//  GetChats.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an ordered list of chats from the beginning of a chat list. For informational purposes only. Use loadChats and updates processing instead to maintain chat lists in a consistent state
public struct GetChats: Codable {

    /// The chat list in which to return chats; pass null to get chats from the main chat list
    public let chatList: ChatList?

    /// The maximum number of chats to be returned
    public let limit: Int?


    public init(
        chatList: ChatList?,
        limit: Int?
    ) {
        self.chatList = chatList
        self.limit = limit
    }
}

