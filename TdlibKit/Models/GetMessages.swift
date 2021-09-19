//
//  GetMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about messages. If a message is not found, returns null on the corresponding position of the result
public struct GetMessages: Codable {

    /// Identifier of the chat the messages belong to
    public let chatId: Int64?

    /// Identifiers of the messages to get
    public let messageIds: [Int64]?


    public init(
        chatId: Int64?,
        messageIds: [Int64]?
    ) {
        self.chatId = chatId
        self.messageIds = messageIds
    }
}

