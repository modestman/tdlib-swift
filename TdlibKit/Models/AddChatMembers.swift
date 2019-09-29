//
//  AddChatMembers.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Adds multiple new members to a chat. Currently this option is only available for supergroups and channels. This option can't be used to join a chat. Members can't be added to a channel if it has more than 200 members. Members will not be added until the chat state has been synchronized with the server
public struct AddChatMembers: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifiers of the users to be added to the chat
    public let userIds: [Int]


    public init (
        chatId: Int64,
        userIds: [Int]) {

        self.chatId = chatId
        self.userIds = userIds
    }
}

