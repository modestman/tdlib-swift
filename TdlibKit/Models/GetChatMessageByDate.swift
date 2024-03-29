//
//  GetChatMessageByDate.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the last message sent in a chat no later than the specified date
public struct GetChatMessageByDate: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Point in time (Unix timestamp) relative to which to search for messages
    public let date: Int?


    public init(
        chatId: Int64?,
        date: Int?
    ) {
        self.chatId = chatId
        self.date = date
    }
}

