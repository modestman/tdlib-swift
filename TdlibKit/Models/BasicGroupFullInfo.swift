//
//  BasicGroupFullInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains full information about a basic group
public struct BasicGroupFullInfo: Codable {

    /// User identifier of the creator of the group; 0 if unknown
    public let creatorUserId: Int

    public let description: String

    /// Invite link for this group; available only after it has been generated at least once and only for the group creator
    public let inviteLink: String

    /// Group members
    public let members: [ChatMember]


    public init (
        creatorUserId: Int,
        description: String,
        inviteLink: String,
        members: [ChatMember]) {

        self.creatorUserId = creatorUserId
        self.description = description
        self.inviteLink = inviteLink
        self.members = members
    }
}

