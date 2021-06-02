//
//  GetChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot
public struct GetChat: Codable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

