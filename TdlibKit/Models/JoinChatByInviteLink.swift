//
//  JoinChatByInviteLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Uses an invite link to add the current user to the chat if possible. The new member will not be added until the chat state has been synchronized with the server
public struct JoinChatByInviteLink: Codable {

    /// Invite link to import; should begin with "https://t.me/joinchat/", "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/"
    public let inviteLink: String


    public init (inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

