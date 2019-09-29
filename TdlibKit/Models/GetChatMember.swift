//
//  GetChatMember.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a single member of a chat
public struct GetChatMember: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// User identifier
    public let userId: Int


    public init (
        chatId: Int64,
        userId: Int) {

        self.chatId = chatId
        self.userId = userId
    }
}

