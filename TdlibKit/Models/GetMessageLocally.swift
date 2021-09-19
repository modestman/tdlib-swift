//
//  GetMessageLocally.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a message, if it is available locally without sending network request. This is an offline request
public struct GetMessageLocally: Codable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message to get
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

