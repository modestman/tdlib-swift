//
//  GetMessageThread.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a message thread. Can be used only if message.can_get_message_thread == true
public struct GetMessageThread: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifier of the message
    public let messageId: Int64


    public init (
        chatId: Int64,
        messageId: Int64) {

        self.chatId = chatId
        self.messageId = messageId
    }
}

