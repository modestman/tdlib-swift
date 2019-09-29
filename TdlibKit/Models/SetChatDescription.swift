//
//  SetChatDescription.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info rights
public struct SetChatDescription: Codable {

    /// Identifier of the chat
    public let chatId: Int64

    public let description: String


    public init (
        chatId: Int64,
        description: String) {

        self.chatId = chatId
        self.description = description
    }
}

