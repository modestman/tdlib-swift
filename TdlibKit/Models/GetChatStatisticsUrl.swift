//
//  GetChatStatisticsUrl.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an HTTP URL with the chat statistics. Currently this method of getting the statistics are disabled and can be deleted in the future
public struct GetChatStatisticsUrl: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true if a URL with the dark theme must be returned
    public let isDark: Bool?

    /// Parameters for the request
    public let parameters: String?


    public init(
        chatId: Int64?,
        isDark: Bool?,
        parameters: String?
    ) {
        self.chatId = chatId
        self.isDark = isDark
        self.parameters = parameters
    }
}

