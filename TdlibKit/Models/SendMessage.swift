//
//  SendMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends a message. Returns the sent message
public struct SendMessage: Codable {

    /// Target chat
    public let chatId: Int64

    /// The content of the message to be sent
    public let inputMessageContent: InputMessageContent

    /// Options to be used to send the message
    public let options: SendMessageOptions

    /// Markup for replying to the message; for bots only
    public let replyMarkup: ReplyMarkup

    /// Identifier of the message to reply to or 0
    public let replyToMessageId: Int64


    public init (
        chatId: Int64,
        inputMessageContent: InputMessageContent,
        options: SendMessageOptions,
        replyMarkup: ReplyMarkup,
        replyToMessageId: Int64) {

        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
        self.options = options
        self.replyMarkup = replyMarkup
        self.replyToMessageId = replyToMessageId
    }
}

