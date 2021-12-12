//
//  GetChatAvailableMessageSenders.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns list of message sender identifiers, which can be used to send messages in a chat
public struct GetChatAvailableMessageSenders: Codable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

