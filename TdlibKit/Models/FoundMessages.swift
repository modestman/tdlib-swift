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

    /// Value to pass as from_search_id to get more results
    public let nextFromSearchId: TdInt64


    public init (
        messages: [Message],
        nextFromSearchId: TdInt64) {

        self.messages = messages
        self.nextFromSearchId = nextFromSearchId
    }
}

