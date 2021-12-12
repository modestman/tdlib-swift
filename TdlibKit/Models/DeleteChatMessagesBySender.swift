//
//  DeleteChatMessagesBySender.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes all messages sent by the specified message sender in a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
public struct DeleteChatMessagesBySender: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the sender of messages to delete
    public let senderId: MessageSender?


    public init(
        chatId: Int64?,
        senderId: MessageSender?
    ) {
        self.chatId = chatId
        self.senderId = senderId
    }
}

