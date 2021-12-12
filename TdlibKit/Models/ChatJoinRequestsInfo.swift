//
//  ChatJoinRequestsInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about pending chat join requests
public struct ChatJoinRequestsInfo: Codable {

    /// Total number of pending join requests
    public let totalCount: Int

    /// Identifiers of users sent the newest pending join requests
    public let userIds: [Int64]


    public init(
        totalCount: Int,
        userIds: [Int64]
    ) {
        self.totalCount = totalCount
        self.userIds = userIds
    }
}

