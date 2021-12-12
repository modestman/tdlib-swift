//
//  ChatInviteLinkCounts.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of chat invite link counts
public struct ChatInviteLinkCounts: Codable {

    /// List of invite link counts
    public let inviteLinkCounts: [ChatInviteLinkCount]


    public init(inviteLinkCounts: [ChatInviteLinkCount]) {
        self.inviteLinkCounts = inviteLinkCounts
    }
}

