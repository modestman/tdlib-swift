//
//  SendChatScreenshotTakenNotification.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats
public struct SendChatScreenshotTakenNotification: Codable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

