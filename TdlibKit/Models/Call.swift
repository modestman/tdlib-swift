//
//  Call.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a call
public struct Call: Codable {

    /// Call identifier, not persistent
    public let id: Int

    /// True, if the call is outgoing
    public let isOutgoing: Bool

    /// Call state
    public let state: CallState

    /// Peer user identifier
    public let userId: Int


    public init (
        id: Int,
        isOutgoing: Bool,
        state: CallState,
        userId: Int) {

        self.id = id
        self.isOutgoing = isOutgoing
        self.state = state
        self.userId = userId
    }
}

