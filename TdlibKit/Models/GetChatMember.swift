//
//  GetChatMember.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a single member of a chat
public struct GetChatMember: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Member identifier
    public let memberId: MessageSender?


    public init(
        chatId: Int64?,
        memberId: MessageSender?
    ) {
        self.chatId = chatId
        self.memberId = memberId
    }
}

