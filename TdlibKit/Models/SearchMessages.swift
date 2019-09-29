//
//  SearchMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)). For optimal performance the number of returned messages is chosen by the library
public struct SearchMessages: Codable {

    /// The maximum number of messages to be returned, up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
    public let limit: Int

    /// The chat identifier of the last found message, or 0 for the first request
    public let offsetChatId: Int64

    /// The date of the message starting from which the results should be fetched. Use 0 or any date in the future to get results from the last message
    public let offsetDate: Int

    /// The message identifier of the last found message, or 0 for the first request
    public let offsetMessageId: Int64

    /// Query to search for
    public let query: String


    public init (
        limit: Int,
        offsetChatId: Int64,
        offsetDate: Int,
        offsetMessageId: Int64,
        query: String) {

        self.limit = limit
        self.offsetChatId = offsetChatId
        self.offsetDate = offsetDate
        self.offsetMessageId = offsetMessageId
        self.query = query
    }
}

