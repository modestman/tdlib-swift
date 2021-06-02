//
//  SetChatMemberStatus.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for adding new members to the chat and transferring chat ownership; instead, use addChatMember or transferChatOwnership
public struct SetChatMemberStatus: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Member identifier. Chats can be only banned and unbanned in supergroups and channels
    public let memberId: MessageSender

    /// The new status of the member in the chat
    public let status: ChatMemberStatus


    public init(
        chatId: Int64,
        memberId: MessageSender,
        status: ChatMemberStatus
    ) {
        self.chatId = chatId
        self.memberId = memberId
        self.status = status
    }
}

