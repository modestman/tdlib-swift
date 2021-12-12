//
//  GetVideoChatAvailableParticipants.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns list of participant identifiers, which can be used to join video chats in a chat
public struct GetVideoChatAvailableParticipants: Codable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

