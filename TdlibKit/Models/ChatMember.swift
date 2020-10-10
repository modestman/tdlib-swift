//
//  ChatMember.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A user with information about joining/leaving a chat
public struct ChatMember: Codable {

    /// If the user is a bot, information about the bot; may be null. Can be null even for a bot if the bot is not the chat member
    public let botInfo: BotInfo?

    /// Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown
    public let inviterUserId: Int

    /// Point in time (Unix timestamp) when the user joined the chat
    public let joinedChatDate: Int

    /// Status of the member in the chat
    public let status: ChatMemberStatus

    /// User identifier of the chat member
    public let userId: Int


    public init (
        botInfo: BotInfo?,
        inviterUserId: Int,
        joinedChatDate: Int,
        status: ChatMemberStatus,
        userId: Int) {

        self.botInfo = botInfo
        self.inviterUserId = inviterUserId
        self.joinedChatDate = joinedChatDate
        self.status = status
        self.userId = userId
    }
}

