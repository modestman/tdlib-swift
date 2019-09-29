//
//  PinChatMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Pins a message in a chat; requires can_pin_messages rights
public struct PinChatMessage: Codable {

    /// Identifier of the chat
    public let chatId: Int64

    /// True, if there should be no notification about the pinned message
    public let disableNotification: Bool

    /// Identifier of the new pinned message
    public let messageId: Int64


    public init (
        chatId: Int64,
        disableNotification: Bool,
        messageId: Int64) {

        self.chatId = chatId
        self.disableNotification = disableNotification
        self.messageId = messageId
    }
}

