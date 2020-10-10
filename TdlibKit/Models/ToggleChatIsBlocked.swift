//
//  ToggleChatIsBlocked.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the block state of a chat. Currently, only private chats and supergroups can be blocked
public struct ToggleChatIsBlocked: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of is_blocked
    public let isBlocked: Bool


    public init (
        chatId: Int64,
        isBlocked: Bool) {

        self.chatId = chatId
        self.isBlocked = isBlocked
    }
}

