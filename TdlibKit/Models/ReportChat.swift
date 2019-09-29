//
//  ReportChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Reports a chat to the Telegram moderators. Supported only for supergroups, channels, or private chats with bots, since other chats can't be checked by moderators
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

