//
//  EditInlineMessageText.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Edits the text of an inline text or game message sent via a bot; for bots only
public struct EditInlineMessageText: Codable {

    /// Inline message identifier
    public let inlineMessageId: String

    /// New text content of the message. Should be of type inputMessageText
    public let inputMessageContent: InputMessageContent

    /// The new message reply markup
    public let replyMarkup: ReplyMarkup


    public init(
        inlineMessageId: String,
        inputMessageContent: InputMessageContent,
        replyMarkup: ReplyMarkup
    ) {
        self.inlineMessageId = inlineMessageId
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
    }
}

