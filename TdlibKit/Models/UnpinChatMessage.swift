//
//  UnpinChatMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes a pinned message from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
public struct UnpinChatMessage: Codable {

    /// Identifier of the chat
    public let chatId: Int64

    /// Identifier of the removed pinned message
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

