//
//  ProcessChatJoinRequest.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Handles a pending join request in a chat
public struct ProcessChatJoinRequest: Codable {

    /// True, if the request is approved. Otherwise the request is declived
    public let approve: Bool?

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the user that sent the request
    public let userId: Int64?


    public init(
        approve: Bool?,
        chatId: Int64?,
        userId: Int64?
    ) {
        self.approve = approve
        self.chatId = chatId
        self.userId = userId
    }
}

