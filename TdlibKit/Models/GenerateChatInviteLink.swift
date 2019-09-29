//
//  GenerateChatInviteLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Generates a new invite link for a chat; the previously generated link is revoked. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right
public struct GenerateChatInviteLink: Codable {

    /// Chat identifier
    public let chatId: Int64


    public init (chatId: Int64) {
        self.chatId = chatId
    }
}

