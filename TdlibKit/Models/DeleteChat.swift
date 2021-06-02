//
//  DeleteChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes a chat along with all messages in the corresponding chat for all chat members; requires owner privileges. For group chats this will release the username and remove all members. Chats with more than 1000 members can't be deleted using this method
public struct DeleteChat: Codable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

