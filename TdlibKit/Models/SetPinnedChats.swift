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
    public let chatIds: [Int64]?

    /// Chat list in which to change the order of pinned chats
    public let chatList: ChatList?


    public init(
        chatIds: [Int64]?,
        chatList: ChatList?
    ) {
        self.chatIds = chatIds
        self.chatList = chatList
    }
}

