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

    /// Pass true to disable notification for the message. Not supported in secret chats
    public let disableNotification: Bool

    /// Pass true if the message is sent from the background
    public let fromBackground: Bool

    /// The content of the message to be sent
    public let inputMessageContent: InputMessageContent

    /// Markup for replying to the message; for bots only
    public let replyMarkup: ReplyMarkup

    /// Identifier of the message to reply to or 0
    public let replyToMessageId: Int64


    public init (
        chatId: Int64,
        disableNotification: Bool,
        fromBackground: Bool,
        inputMessageContent: InputMessageContent,
        replyMarkup: ReplyMarkup,
        replyToMessageId: Int64) {

        self.chatId = chatId
        self.disableNotification = disableNotification
        self.fromBackground = fromBackground
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
        self.replyToMessageId = replyToMessageId
    }
}

