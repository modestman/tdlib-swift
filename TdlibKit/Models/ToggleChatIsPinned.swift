//
//  ToggleChatIsPinned.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the pinned state of a chat. You can pin up to GetOption("pinned_chat_count_max") non-secret chats and the same number of secret chats
public struct ToggleChatIsPinned: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of is_pinned
    public let isPinned: Bool


    public init (
        chatId: Int64,
        isPinned: Bool) {

        self.chatId = chatId
        self.isPinned = isPinned
    }
}

