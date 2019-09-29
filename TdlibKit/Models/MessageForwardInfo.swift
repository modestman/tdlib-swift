//
//  MessageForwardInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a forwarded message
public struct MessageForwardInfo: Codable {

    /// Point in time (Unix timestamp) when the message was originally sent
    public let date: Int

    /// For messages forwarded to the chat with the current user (saved messages) or to the channel discussion supergroup, the identifier of the chat from which the message was forwarded last time; 0 if unknown
    public let fromChatId: Int64

    /// For messages forwarded to the chat with the current user (saved messages) or to the channel discussion supergroup, the identifier of the original message from which the new message was forwarded last time; 0 if unknown
    public let fromMessageId: Int64

    /// Origin of a forwarded message
    public let origin: MessageForwardOrigin


    public init (
        date: Int,
        fromChatId: Int64,
        fromMessageId: Int64,
        origin: MessageForwardOrigin) {

        self.date = date
        self.fromChatId = fromChatId
        self.fromMessageId = fromMessageId
        self.origin = origin
    }
}

