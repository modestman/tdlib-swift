//
//  UnpinChatMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes the pinned message from a chat; requires can_pin_messages rights in the group or channel
public struct UnpinChatMessage: Codable {

    /// Identifier of the chat
    public let chatId: Int64


    public init (chatId: Int64) {
        self.chatId = chatId
    }
}

