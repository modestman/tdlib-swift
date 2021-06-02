//
//  ChatInviteLinkMember.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a chat member joined a chat by an invite link
public struct ChatInviteLinkMember: Codable {

    /// Point in time (Unix timestamp) when the user joined the chat
    public let joinedChatDate: Int

    /// User identifier
    public let userId: Int


    public init(
        joinedChatDate: Int,
        userId: Int
    ) {
        self.joinedChatDate = joinedChatDate
        self.userId = userId
    }
}

