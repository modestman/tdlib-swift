//
//  ReportChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if this is a private chat with a bot, a private chat with a user sharing their location, a supergroup, or a channel, since other chats can't be checked by moderators
public struct ReportChat: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifiers of reported messages, if any
    public let messageIds: [Int64]?

    /// The reason for reporting the chat
    public let reason: ChatReportReason?

    /// Additional report details; 0-1024 characters
    public let text: String?


    public init(
        chatId: Int64?,
        messageIds: [Int64]?,
        reason: ChatReportReason?,
        text: String?
    ) {
        self.chatId = chatId
        self.messageIds = messageIds
        self.reason = reason
        self.text = text
    }
}

