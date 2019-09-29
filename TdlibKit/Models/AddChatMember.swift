//
//  AddChatMember.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Adds a new member to a chat. Members can't be added to private or secret chats. Members will not be added until the chat state has been synchronized with the server
public struct AddChatMember: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels
    public let forwardLimit: Int

    /// Identifier of the user
    public let userId: Int


    public init (
        chatId: Int64,
        forwardLimit: Int,
        userId: Int) {

        self.chatId = chatId
        self.forwardLimit = forwardLimit
        self.userId = userId
    }
}

