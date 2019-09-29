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
    public let id: String

    /// Identifier of the user who performed the action that triggered the event
    public let userId: Int


    public init (
        action: ChatEventAction,
        date: Int,
        id: String,
        userId: Int) {

        self.action = action
        self.date = date
        self.id = id
        self.userId = userId
    }
}

