//
//  ChatInviteLinks.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of chat invite links
public struct ChatInviteLinks: Codable {

    /// List of invite links
    public let inviteLinks: [ChatInviteLink]

    /// Approximate total count of chat invite links found
    public let totalCount: Int


    public init(
        inviteLinks: [ChatInviteLink],
        totalCount: Int
    ) {
        self.inviteLinks = inviteLinks
        self.totalCount = totalCount
    }
}

