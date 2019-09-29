//
//  SendChatSetTtlMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the current TTL setting (sets a new self-destruct timer) in a secret chat and sends the corresponding message
public struct SendChatSetTtlMessage: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New TTL value, in seconds
    public let ttl: Int


    public init (
        chatId: Int64,
        ttl: Int) {

        self.chatId = chatId
        self.ttl = ttl
    }
}

