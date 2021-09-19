//
//  GetVoiceChatAvailableParticipants.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns list of participant identifiers, which can be used to join voice chats in a chat
public struct GetVoiceChatAvailableParticipants: Codable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

