//
//  SetChatSlowModeDelay.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights
public struct SetChatSlowModeDelay: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300, 900, 3600
    public let slowModeDelay: Int?


    public init(
        chatId: Int64?,
        slowModeDelay: Int?
    ) {
        self.chatId = chatId
        self.slowModeDelay = slowModeDelay
    }
}

