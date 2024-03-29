//
//  MessageReplyInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about replies to a message
public struct MessageReplyInfo: Codable {

    /// Identifier of the last reply to the message
    public let lastMessageId: Int64

    /// Identifier of the last read incoming reply to the message
    public let lastReadInboxMessageId: Int64

    /// Identifier of the last read outgoing reply to the message
    public let lastReadOutboxMessageId: Int64

    /// Identifiers of recent repliers to the message; available in channels with a discussion supergroup
    public let recentReplierIds: [MessageSender]

    /// Number of times the message was directly or indirectly replied
    public let replyCount: Int


    public init(
        lastMessageId: Int64,
        lastReadInboxMessageId: Int64,
        lastReadOutboxMessageId: Int64,
        recentReplierIds: [MessageSender],
        replyCount: Int
    ) {
        self.lastMessageId = lastMessageId
        self.lastReadInboxMessageId = lastReadInboxMessageId
        self.lastReadOutboxMessageId = lastReadOutboxMessageId
        self.recentReplierIds = recentReplierIds
        self.replyCount = replyCount
    }
}

