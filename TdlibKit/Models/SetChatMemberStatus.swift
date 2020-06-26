//
//  SetChatMemberStatus.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for adding new members to the chat and transferring chat ownership; instead, use addChatMember or transferChatOwnership. The chat member status will not be changed until it has been synchronized with the server
public struct SetChatMemberStatus: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// The new status of the member in the chat
    public let status: ChatMemberStatus

    /// User identifier
    public let userId: Int


    public init (
        chatId: Int64,
        status: ChatMemberStatus,
        userId: Int) {

        self.chatId = chatId
        self.status = status
        self.userId = userId
    }
}

