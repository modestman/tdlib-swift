//
//  GetRepliedMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a message that is replied by given message
public struct GetRepliedMessage: Codable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64

    /// Identifier of the message reply to which get
    public let messageId: Int64


    public init (
        chatId: Int64,
        messageId: Int64) {

        self.chatId = chatId
        self.messageId = messageId
    }
}

