//
//  ReportChatPhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Reports a chat photo to the Telegram moderators. A chat photo can be reported only if this is a private chat with a bot, a private chat with a user sharing their location, a supergroup, or a channel, since other chats can't be checked by moderators
public struct ReportChatPhoto: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the photo to report. Only full photos from chatPhoto can be reported
    public let fileId: Int?

    /// The reason for reporting the chat photo
    public let reason: ChatReportReason?

    /// Additional report details; 0-1024 characters
    public let text: String?


    public init(
        chatId: Int64?,
        fileId: Int?,
        reason: ChatReportReason?,
        text: String?
    ) {
        self.chatId = chatId
        self.fileId = fileId
        self.reason = reason
        self.text = text
    }
}

