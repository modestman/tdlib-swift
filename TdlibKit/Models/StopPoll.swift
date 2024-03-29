//
//  StopPoll.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Stops a poll. A poll in a message can be stopped when the message has can_be_edited flag set
public struct StopPoll: Codable {

    /// Identifier of the chat to which the poll belongs
    public let chatId: Int64?

    /// Identifier of the message containing the poll
    public let messageId: Int64?

    /// The new message reply markup; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

