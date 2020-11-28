//
//  MessageSenders.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a list of message senders
public struct MessageSenders: Codable {

    /// List of message senders
    public let senders: [MessageSender]

    /// Approximate total count of messages senders found
    public let totalCount: Int


    public init (
        senders: [MessageSender],
        totalCount: Int) {

        self.senders = senders
        self.totalCount = totalCount
    }
}

