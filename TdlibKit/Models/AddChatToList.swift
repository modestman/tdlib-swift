//
//  AddChatToList.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed
public struct AddChatToList: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// The chat list. Use getChatListsToAddChat to get suitable chat lists
    public let chatList: ChatList


    public init (
        chatId: Int64,
        chatList: ChatList) {

        self.chatId = chatId
        self.chatList = chatList
    }
}

