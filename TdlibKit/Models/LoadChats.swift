//
//  LoadChats.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Loads more chats from a chat list. The loaded chats and their positions in the chat list will be sent through updates. Chats are sorted by the pair (chat.position.order, chat.id) in descending order. Returns a 404 error if all chats has been loaded
public struct LoadChats: Codable {

    /// The chat list in which to load chats
    public let chatList: ChatList?

    /// The maximum number of chats to be loaded. For optimal performance, the number of loaded chats is chosen by TDLib and can be smaller than the specified limit, even if the end of the list is not reached
    public let limit: Int?


    public init(
        chatList: ChatList?,
        limit: Int?
    ) {
        self.chatList = chatList
        self.limit = limit
    }
}

