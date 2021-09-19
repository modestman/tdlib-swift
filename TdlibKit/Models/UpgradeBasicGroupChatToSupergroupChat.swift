//
//  UpgradeBasicGroupChatToSupergroupChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
public struct UpgradeBasicGroupChatToSupergroupChat: Codable {

    /// Identifier of the chat to upgrade
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

