//
//  SetPinnedChats.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the order of pinned chats
public struct SetPinnedChats: Codable {

    /// The new list of pinned chats
    public let chatIds: [Int64]


    public init (chatIds: [Int64]) {
        self.chatIds = chatIds
    }
}

