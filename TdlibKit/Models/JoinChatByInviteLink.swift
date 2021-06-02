//
//  JoinChatByInviteLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Uses an invite link to add the current user to the chat if possible
public struct JoinChatByInviteLink: Codable {

    /// Invite link to import; must have URL "t.me", "telegram.me", or "telegram.dog" and query beginning with "/joinchat/" or "/+"
    public let inviteLink: String


    public init(inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

