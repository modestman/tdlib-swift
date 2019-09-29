//
//  ChatInviteLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a chat invite link
public struct ChatInviteLink: Codable {

    /// Chat invite link
    public let inviteLink: String


    public init (inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

