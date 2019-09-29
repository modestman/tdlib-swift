//
//  DraftMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a message draft
public struct DraftMessage: Codable {

    /// Content of the message draft; this should always be of type inputMessageText
    public let inputMessageText: InputMessageContent

    /// Identifier of the message to reply to; 0 if none
    public let replyToMessageId: Int64


    public init (
        inputMessageText: InputMessageContent,
        replyToMessageId: Int64) {

        self.inputMessageText = inputMessageText
        self.replyToMessageId = replyToMessageId
    }
}

