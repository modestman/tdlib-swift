//
//  Messages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of messages
public struct Messages: Codable {

    /// List of messages; messages may be null
    public let messages: [Message]?

    /// Approximate total count of messages found
    public let totalCount: Int


    public init (
        messages: [Message]?,
        totalCount: Int) {

        self.messages = messages
        self.totalCount = totalCount
    }
}

