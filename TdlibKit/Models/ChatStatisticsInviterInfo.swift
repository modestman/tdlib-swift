//
//  ChatStatisticsInviterInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains statistics about number of new members invited by a user
public struct ChatStatisticsInviterInfo: Codable {

    /// Number of new members invited by the user
    public let addedMemberCount: Int

    /// User identifier
    public let userId: Int64


    public init(
        addedMemberCount: Int,
        userId: Int64
    ) {
        self.addedMemberCount = addedMemberCount
        self.userId = userId
    }
}

