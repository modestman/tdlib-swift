//
//  ChatInviteLinkCount.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a chat administrator with a number of active and revoked chat invite links
public struct ChatInviteLinkCount: Codable {

    /// Number of active invite links
    public let inviteLinkCount: Int

    /// Number of revoked invite links
    public let revokedInviteLinkCount: Int

    /// Administrator's user identifier
    public let userId: Int


    public init(
        inviteLinkCount: Int,
        revokedInviteLinkCount: Int,
        userId: Int
    ) {
        self.inviteLinkCount = inviteLinkCount
        self.revokedInviteLinkCount = revokedInviteLinkCount
        self.userId = userId
    }
}

