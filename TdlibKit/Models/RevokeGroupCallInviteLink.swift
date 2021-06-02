//
//  RevokeGroupCallInviteLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Revokes invite link for a group call. Requires groupCall.can_be_managed group call flag
public struct RevokeGroupCallInviteLink: Codable {

    /// Group call identifier
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

