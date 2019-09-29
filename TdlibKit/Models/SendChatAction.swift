//
//  SendChatAction.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends a notification about user activity in a chat
public struct SendChatAction: Codable {

    /// The action description
    public let action: ChatAction

    /// Chat identifier
    public let chatId: Int64


    public init (
        action: ChatAction,
        chatId: Int64) {

        self.action = action
        self.chatId = chatId
    }
}

