//
//  SearchCallMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for call messages. Returns the results in reverse chronological order (i. e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
public struct SearchCallMessages: Codable {

    /// Identifier of the message from which to search; use 0 to get results from the last message
    public let fromMessageId: Int64?

    /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// If true, returns only messages with missed/declined calls
    public let onlyMissed: Bool?


    public init(
        fromMessageId: Int64?,
        limit: Int?,
        onlyMissed: Bool?
    ) {
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.onlyMissed = onlyMissed
    }
}

