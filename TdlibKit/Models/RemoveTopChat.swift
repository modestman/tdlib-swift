//
//  RemoveTopChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled
public struct RemoveTopChat: Codable {

    /// Category of frequently used chats
    public let category: TopChatCategory?

    /// Chat identifier
    public let chatId: Int64?


    public init(
        category: TopChatCategory?,
        chatId: Int64?
    ) {
        self.category = category
        self.chatId = chatId
    }
}

