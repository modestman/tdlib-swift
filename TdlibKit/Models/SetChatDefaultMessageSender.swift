//
//  SetChatDefaultMessageSender.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes default message sender that is chosen in a chat
public struct SetChatDefaultMessageSender: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// New default message sender in the chat
    public let defaultMessageSenderId: MessageSender?


    public init(
        chatId: Int64?,
        defaultMessageSenderId: MessageSender?
    ) {
        self.chatId = chatId
        self.defaultMessageSenderId = defaultMessageSenderId
    }
}

