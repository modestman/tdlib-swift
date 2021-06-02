//
//  CheckChatInviteLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks the validity of an invite link for a chat and returns information about the corresponding chat
public struct CheckChatInviteLink: Codable {

    /// Invite link to be checked; must have URL "t.me", "telegram.me", or "telegram.dog" and query beginning with "/joinchat/" or "/+"
    public let inviteLink: String


    public init(inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

