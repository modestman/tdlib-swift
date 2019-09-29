//
//  SetPollAnswer.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes user answer to a poll
public struct SetPollAnswer: Codable {

    /// Identifier of the chat to which the poll belongs
    public let chatId: Int64

    /// Identifier of the message containing the poll
    public let messageId: Int64

    /// 0-based identifiers of options, chosen by the user. Currently user can't choose more than 1 option
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

