//
//  FoundMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of messages found by a search
public struct FoundMessages: Codable {

    /// List of messages
    public let messages: [Message]

    /// The offset for the next request. If empty, there are no more results
    public let nextOffset: String

    /// Approximate total count of messages found; -1 if unknown
    public let totalCount: Int


    public init(
        messages: [Message],
        nextOffset: String,
        totalCount: Int
    ) {
        self.messages = messages
        self.nextOffset = nextOffset
        self.totalCount = totalCount
    }
}

