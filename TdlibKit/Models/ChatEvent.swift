//
//  ChatEvent.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a chat event
public struct ChatEvent: Codable {

    /// Action performed by the user
    public let action: ChatEventAction

    /// Point in time (Unix timestamp) when the event happened
    public let date: Int

    /// Chat event identifier
    public let id: TdInt64

    /// Identifier of the user who performed the action that triggered the event
    public let userId: Int64


    public init(
        action: ChatEventAction,
        date: Int,
        id: TdInt64,
        userId: Int64
    ) {
        self.action = action
        self.date = date
        self.id = id
        self.userId = userId
    }
}

