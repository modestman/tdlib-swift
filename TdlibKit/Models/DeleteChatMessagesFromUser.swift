//
//  DeleteChatMessagesFromUser.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes all messages sent by the specified user to a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
public struct DeleteChatMessagesFromUser: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// User identifier
    public let userId: Int?


    public init(
        chatId: Int64?,
        userId: Int?
    ) {
        self.chatId = chatId
        self.userId = userId
    }
}

