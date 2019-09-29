//
//  ToggleChatIsMarkedAsUnread.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the marked as unread state of a chat
public struct ToggleChatIsMarkedAsUnread: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of is_marked_as_unread
    public let isMarkedAsUnread: Bool


    public init (
        chatId: Int64,
        isMarkedAsUnread: Bool) {

        self.chatId = chatId
        self.isMarkedAsUnread = isMarkedAsUnread
    }
}

