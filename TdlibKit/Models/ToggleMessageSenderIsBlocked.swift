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

    /// Identifier of a message sender to block/unblock
    public let senderId: MessageSender?


    public init(
        isBlocked: Bool?,
        senderId: MessageSender?
    ) {
        self.isBlocked = isBlocked
        self.senderId = senderId
    }
}

