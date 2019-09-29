//
//  AddLocalMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
public struct AddLocalMessage: Codable {

    /// Target chat
    public let chatId: Int64

    /// Pass true to disable notification for the message
    public let disableNotification: Bool

    /// The content of the message to be added
    public let inputMessageContent: InputMessageContent

    /// Identifier of the message to reply to or 0
    public let replyToMessageId: Int64

    /// Identifier of the user who will be shown as the sender of the message; may be 0 for channel posts
    public let senderUserId: Int


    public init (
        chatId: Int64,
        disableNotification: Bool,
        inputMessageContent: InputMessageContent,
        replyToMessageId: Int64,
        senderUserId: Int) {

        self.chatId = chatId
        self.disableNotification = disableNotification
        self.inputMessageContent = inputMessageContent
        self.replyToMessageId = replyToMessageId
        self.senderUserId = senderUserId
    }
}

