//
//  SponsoredMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a sponsored message
public struct SponsoredMessage: Codable {

    /// Content of the message
    public let content: MessageContent

    /// Unique sponsored message identifier
    public let id: Int

    /// Chat identifier
    public let sponsorChatId: Int64

    /// Parameter for the bot start message if the sponsored chat is a chat with a bot
    public let startParameter: String


    public init(
        content: MessageContent,
        id: Int,
        sponsorChatId: Int64,
        startParameter: String
    ) {
        self.content = content
        self.id = id
        self.sponsorChatId = sponsorChatId
        self.startParameter = startParameter
    }
}
