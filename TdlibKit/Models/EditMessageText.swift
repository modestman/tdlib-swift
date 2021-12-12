//
//  EditMessageText.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side
public struct EditMessageText: Codable {

    /// The chat the message belongs to
    public let chatId: Int64?

    /// New text content of the message. Must be of type inputMessageText
    public let inputMessageContent: InputMessageContent?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new message reply markup; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64?,
        inputMessageContent: InputMessageContent?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

