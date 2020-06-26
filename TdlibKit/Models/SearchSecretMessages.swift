//
//  SearchSecretMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for messages in secret chats. Returns the results in reverse chronological order. For optimal performance the number of returned messages is chosen by the library
public struct SearchSecretMessages: Codable {

    /// Identifier of the chat in which to search. Specify 0 to search in all secret chats
    public let chatId: Int64

    /// A filter for the content of messages in the search results
    public let filter: SearchMessagesFilter

    /// The identifier from the result of a previous request, use 0 to get results from the last message
    public let fromSearchId: TdInt64

    /// The maximum number of messages to be returned; up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
    public let limit: Int

    /// Query to search for. If empty, searchChatMessages should be used instead
    public let query: String


    public init (
        chatId: Int64,
        filter: SearchMessagesFilter,
        fromSearchId: TdInt64,
        limit: Int,
        query: String) {

        self.chatId = chatId
        self.filter = filter
        self.fromSearchId = fromSearchId
        self.limit = limit
        self.query = query
    }
}

