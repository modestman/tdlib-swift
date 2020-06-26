//
//  ReportChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if this is a private chats with a bot, a private chat with a user sharing their location, a supergroup, or a channel, since other chats can't be checked by moderators
public struct ReportChat: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifiers of reported messages, if any
    public let messageIds: [Int64]

    /// The reason for reporting the chat
    public let reason: ChatReportReason


    public init (
        chatId: Int64,
        messageIds: [Int64],
        reason: ChatReportReason) {

        self.chatId = chatId
        self.messageIds = messageIds
        self.reason = reason
    }
}

