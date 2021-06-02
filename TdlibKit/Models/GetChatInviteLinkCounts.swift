//
//  GetChatInviteLinkCounts.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns list of chat administrators with number of their invite links. Requires owner privileges in the chat
public struct GetChatInviteLinkCounts: Codable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

