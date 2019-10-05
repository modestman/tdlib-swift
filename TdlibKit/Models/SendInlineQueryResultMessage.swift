//
//  SendInlineQueryResultMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
public struct SendInlineQueryResultMessage: Codable {

    /// Target chat
    public let chatId: Int64

    /// Pass true to disable notification for the message. Not supported in secret chats
    public let disableNotification: Bool

    /// Pass true if the message is sent from background
    public let fromBackground: Bool

    /// If true, there will be no mention of a bot, via which the message is sent. Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and GetOption("venue_search_bot_username")
    public let hideViaBot: Bool

    /// Identifier of the inline query
    public let queryId: TdInt64

    /// Identifier of a message to reply to or 0
    public let replyToMessageId: Int64

    /// Identifier of the inline result
    public let resultId: String


    public init (
        chatId: Int64,
        disableNotification: Bool,
        fromBackground: Bool,
        hideViaBot: Bool,
        queryId: TdInt64,
        replyToMessageId: Int64,
        resultId: String) {

        self.chatId = chatId
        self.disableNotification = disableNotification
        self.fromBackground = fromBackground
        self.hideViaBot = hideViaBot
        self.queryId = queryId
        self.replyToMessageId = replyToMessageId
        self.resultId = resultId
    }
}

