//
//  GetPublicMessageLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a public HTTPS link to a message. Available only for messages in supergroups and channels with a username
public struct GetPublicMessageLink: Codable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64

    /// Pass true if a link for a whole media album should be returned
    public let forAlbum: Bool

    /// Identifier of the message
    public let messageId: Int64


    public init (
        chatId: Int64,
        forAlbum: Bool,
        messageId: Int64) {

        self.chatId = chatId
        self.forAlbum = forAlbum
        self.messageId = messageId
    }
}

