//
//  CheckChatInviteLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks the validity of an invite link for a chat and returns information about the corresponding chat
public struct CheckChatInviteLink: Codable {

    /// Invite link to be checked; should begin with "https://t.me/joinchat/", "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/"
    public let inviteLink: String


    public init (inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

