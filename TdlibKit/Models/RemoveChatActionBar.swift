//
//  RemoveChatActionBar.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes a chat action bar without any other action
public struct RemoveChatActionBar: Codable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

