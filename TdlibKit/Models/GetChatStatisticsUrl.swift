//
//  GetChatStatisticsUrl.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an HTTP URL with the chat statistics. Currently this method can be used only for channels
public struct GetChatStatisticsUrl: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Pass true if a URL with the dark theme must be returned
    public let isDark: Bool

    /// Parameters from "tg://statsrefresh?params=******" link
    public let parameters: String


    public init (
        chatId: Int64,
        isDark: Bool,
        parameters: String) {

        self.chatId = chatId
        self.isDark = isDark
        self.parameters = parameters
    }
}

