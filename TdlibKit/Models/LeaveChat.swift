//
//  LeaveChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes the current user from chat members. Private and secret chats can't be left using this method
public struct LeaveChat: Codable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

