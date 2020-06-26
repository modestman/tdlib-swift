//
//  GetChatStatistics.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns detailed statistics about a chat. Currently this method can be used only for channels. Requires administrator rights in the channel
public struct GetChatStatistics: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Pass true if a dark theme is used by the app
    public let isDark: Bool


    public init (
        chatId: Int64,
        isDark: Bool) {

        self.chatId = chatId
        self.isDark = isDark
    }
}

