//
//  GetGameHighScores.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only
public struct GetGameHighScores: Codable {

    /// The chat that contains the message with the game
    public let chatId: Int64

    /// Identifier of the message
    public let messageId: Int64

    /// User identifier
    public let userId: Int


    public init (
        chatId: Int64,
        messageId: Int64,
        userId: Int) {

        self.chatId = chatId
        self.messageId = messageId
        self.userId = userId
    }
}

