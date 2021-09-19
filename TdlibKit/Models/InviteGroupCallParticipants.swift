//
//  InviteGroupCallParticipants.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Invites users to an active group call. Sends a service message of type messageInviteToGroupCall for voice chats
public struct InviteGroupCallParticipants: Codable {

    /// Group call identifier
    public let groupCallId: Int?

    /// User identifiers. At most 10 users can be invited simultaneously
    public let userIds: [Int]?


    public init(
        groupCallId: Int?,
        userIds: [Int]?
    ) {
        self.groupCallId = groupCallId
        self.userIds = userIds
    }
}

