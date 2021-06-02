//
//  ReplacePrimaryChatInviteLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Replaces current primary invite link for a chat with a new primary invite link. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right
public struct ReplacePrimaryChatInviteLink: Codable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

