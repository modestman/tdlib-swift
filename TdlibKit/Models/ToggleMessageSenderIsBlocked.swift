//
//  ToggleMessageSenderIsBlocked.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked
public struct ToggleMessageSenderIsBlocked: Codable {

    /// New value of is_blocked
    public let isBlocked: Bool?

    /// Message Sender
    public let sender: MessageSender?


    public init(
        isBlocked: Bool?,
        sender: MessageSender?
    ) {
        self.isBlocked = isBlocked
        self.sender = sender
    }
}

