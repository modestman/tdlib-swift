//
//  ViewMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Informs TDLib that messages are being viewed by the user. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels)
public struct ViewMessages: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// True, if messages in closed chats must be marked as read by the request
    public let forceRead: Bool?

    /// The identifiers of the messages being viewed
    public let messageIds: [Int64]?

    /// If not 0, a message thread identifier in which the messages are being viewed
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        forceRead: Bool?,
        messageIds: [Int64]?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.forceRead = forceRead
        self.messageIds = messageIds
        self.messageThreadId = messageThreadId
    }
}

