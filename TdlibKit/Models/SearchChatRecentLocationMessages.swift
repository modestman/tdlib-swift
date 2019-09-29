//
//  SearchChatRecentLocationMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user
public struct SearchChatRecentLocationMessages: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Maximum number of messages to be returned
    public let limit: Int


    public init (
        chatId: Int64,
        limit: Int) {

        self.chatId = chatId
        self.limit = limit
    }
}

