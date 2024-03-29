//
//  BlockMessageSenderFromReplies.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Blocks an original sender of a message in the Replies chat
public struct BlockMessageSenderFromReplies: Codable {

    /// Pass true if all messages from the same sender must be deleted
    public let deleteAllMessages: Bool?

    /// Pass true if the message must be deleted
    public let deleteMessage: Bool?

    /// The identifier of an incoming message in the Replies chat
    public let messageId: Int64?

    /// Pass true if the sender must be reported to the Telegram moderators
    public let reportSpam: Bool?


    public init(
        deleteAllMessages: Bool?,
        deleteMessage: Bool?,
        messageId: Int64?,
        reportSpam: Bool?
    ) {
        self.deleteAllMessages = deleteAllMessages
        self.deleteMessage = deleteMessage
        self.messageId = messageId
        self.reportSpam = reportSpam
    }
}

