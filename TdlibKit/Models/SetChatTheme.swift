//
//  SetChatTheme.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the chat theme. Supported only in private and secret chats
public struct SetChatTheme: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Name of the new chat theme; pass an empty string to return the default theme
    public let themeName: String?


    public init(
        chatId: Int64?,
        themeName: String?
    ) {
        self.chatId = chatId
        self.themeName = themeName
    }
}

