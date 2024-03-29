//
//  EditMessageReplyMarkup.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side
public struct EditMessageReplyMarkup: Codable {

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

