//
//  ChatMember.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Information about a user or a chat as a member of another chat
public struct ChatMember: Codable {

    /// If the user is a bot, information about the bot; may be null. Can be null even for a bot if the bot is not the chat member
    public let botInfo: BotInfo?

    /// Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown
    public let inviterUserId: Int

    /// Point in time (Unix timestamp) when the user joined the chat
    public let joinedChatDate: Int

    /// Identifier of the chat member. Currently, other chats can be only Left or Banned. Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups or channels
    public let memberId: MessageSender

    /// Status of the member in the chat
    public let status: ChatMemberStatus


    public init(
        botInfo: BotInfo?,
        inviterUserId: Int,
        joinedChatDate: Int,
        memberId: MessageSender,
        status: ChatMemberStatus
    ) {
        self.botInfo = botInfo
        self.inviterUserId = inviterUserId
        self.joinedChatDate = joinedChatDate
        self.memberId = memberId
        self.status = status
    }
}

