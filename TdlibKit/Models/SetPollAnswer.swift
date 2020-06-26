//
//  SetPollAnswer.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the user answer to a poll. A poll in quiz mode can be answered only once
public struct SetPollAnswer: Codable {

    /// Identifier of the chat to which the poll belongs
    public let chatId: Int64

    /// Identifier of the message containing the poll
    public let messageId: Int64

    /// 0-based identifiers of answer options, chosen by the user. User can choose more than 1 answer option only is the poll allows multiple answers
    public let optionIds: [Int]


    public init (
        chatId: Int64,
        messageId: Int64,
        optionIds: [Int]) {

        self.chatId = chatId
        self.messageId = messageId
        self.optionIds = optionIds
    }
}

