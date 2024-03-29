//
//  ToggleChatIsPinned.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the pinned state of a chat. There can be up to GetOption("pinned_chat_count_max")/GetOption("pinned_archived_chat_count_max") pinned non-secret chats and the same number of secret chats in the main/arhive chat list
public struct ToggleChatIsPinned: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Chat list in which to change the pinned state of the chat
    public let chatList: ChatList?

    /// True, if the chat is pinned
    public let isPinned: Bool?


    public init(
        chatId: Int64?,
        chatList: ChatList?,
        isPinned: Bool?
    ) {
        self.chatId = chatId
        self.chatList = chatList
        self.isPinned = isPinned
    }
}

