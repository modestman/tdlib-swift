//
//  GetChatPinnedMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a pinned chat message
public struct GetChatPinnedMessage: Codable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64


    public init (chatId: Int64) {
        self.chatId = chatId
    }
}

