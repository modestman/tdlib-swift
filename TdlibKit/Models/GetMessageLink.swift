//
//  GetMessageLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a private HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels. The link will work only for members of the chat
public struct GetMessageLink: Codable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64

    /// Identifier of the message
    public let messageId: Int64


    public init (
        chatId: Int64,
        messageId: Int64) {

        self.chatId = chatId
        self.messageId = messageId
    }
}

