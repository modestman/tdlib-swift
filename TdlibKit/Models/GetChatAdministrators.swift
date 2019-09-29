//
//  GetChatAdministrators.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a list of users who are administrators of the chat
public struct GetChatAdministrators: Codable {

    /// Chat identifier
    public let chatId: Int64


    public init (chatId: Int64) {
        self.chatId = chatId
    }
}

