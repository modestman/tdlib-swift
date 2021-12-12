//
//  ToggleChatHasProtectedContent.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the ability of users to save, forward, or copy chat content. Supported only for basic groups, supergroups and channels. Requires owner privileges
public struct ToggleChatHasProtectedContent: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// True, if chat content can't be saved locally, forwarded, or copied
    public let hasProtectedContent: Bool?


    public init(
        chatId: Int64?,
        hasProtectedContent: Bool?
    ) {
        self.chatId = chatId
        self.hasProtectedContent = hasProtectedContent
    }
}

