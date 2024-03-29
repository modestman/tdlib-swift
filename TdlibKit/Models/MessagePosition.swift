//
//  MessagePosition.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a message in a specific position
public struct MessagePosition: Codable {

    /// Point in time (Unix timestamp) when the message was sent
    public let date: Int

    /// Message identifier
    public let messageId: Int64

    /// 0-based message position in the full list of suitable messages
    public let position: Int


    public init(
        date: Int,
        messageId: Int64,
        position: Int
    ) {
        self.date = date
        self.messageId = messageId
        self.position = position
    }
}

