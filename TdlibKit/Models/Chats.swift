//
//  Chats.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a list of chats
public struct Chats: Codable {

    /// List of chat identifiers
    public let chatIds: [Int64]


    public init (chatIds: [Int64]) {
        self.chatIds = chatIds
    }
}

