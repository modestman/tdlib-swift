//
//  ClickAnimatedEmojiMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Informs TDLib that a message with an animated emoji was clicked by the user. Returns a big animated sticker to be played or a 404 error if usual animation needs to be played
public struct ClickAnimatedEmojiMessage: Codable {

    /// Chat identifier of the message
    public let chatId: Int64?

    /// Identifier of the clicked message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}
