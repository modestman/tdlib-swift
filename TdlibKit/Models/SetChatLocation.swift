//
//  SetChatLocation.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use
public struct SetChatLocation: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New location for the chat; must be valid and not null
    public let location: ChatLocation


    public init(
        chatId: Int64,
        location: ChatLocation
    ) {
        self.chatId = chatId
        self.location = location
    }
}

