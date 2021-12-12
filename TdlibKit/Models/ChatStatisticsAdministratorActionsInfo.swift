//
//  ChatStatisticsAdministratorActionsInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains statistics about administrator actions done by a user
public struct ChatStatisticsAdministratorActionsInfo: Codable {

    /// Number of users banned by the administrator
    public let bannedUserCount: Int

    /// Number of messages deleted by the administrator
    public let deletedMessageCount: Int

    /// Number of users restricted by the administrator
    public let restrictedUserCount: Int

    /// Administrator user identifier
    public let userId: Int64


    public init(
        bannedUserCount: Int,
        deletedMessageCount: Int,
        restrictedUserCount: Int,
        userId: Int64
    ) {
        self.bannedUserCount = bannedUserCount
        self.deletedMessageCount = deletedMessageCount
        self.restrictedUserCount = restrictedUserCount
        self.userId = userId
    }
}

