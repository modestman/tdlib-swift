//
//  EditInlineMessageMedia.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only
public struct EditInlineMessageMedia: Codable {

    /// Inline message identifier
    public let inlineMessageId: String

    /// New content of the message. Must be one of the following types: InputMessageAnimation, InputMessageAudio, InputMessageDocument, InputMessagePhoto or InputMessageVideo
    public let inputMessageContent: InputMessageContent

    /// The new message reply markup; for bots only
    public let replyMarkup: ReplyMarkup


    public init (
        inlineMessageId: String,
        inputMessageContent: InputMessageContent,
        replyMarkup: ReplyMarkup) {

        self.inlineMessageId = inlineMessageId
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
    }
}

