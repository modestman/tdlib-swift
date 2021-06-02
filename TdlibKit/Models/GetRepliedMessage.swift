//
//  GetRepliedMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a message that is replied by a given message. Also returns the pinned message, the game message, and the invoice message for messages of the types messagePinMessage, messageGameScore, and messagePaymentSuccessful respectively
public struct GetRepliedMessage: Codable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64

    /// Identifier of the message reply to which to get
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

