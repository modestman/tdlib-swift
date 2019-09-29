//
//  CreateNewSupergroupChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
public struct CreateNewSupergroupChat: Codable {

    public let description: String

    /// True, if a channel chat should be created
    public let isChannel: Bool

    /// Title of the new chat; 1-128 characters
    public let title: String


    public init (
        description: String,
        isChannel: Bool,
        title: String) {

        self.description = description
        self.isChannel = isChannel
        self.title = title
    }
}

