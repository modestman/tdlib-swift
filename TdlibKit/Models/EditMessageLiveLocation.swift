//
//  EditMessageLiveLocation.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location. Returns the edited message after the edit is completed on the server side
public struct EditMessageLiveLocation: Codable {

    /// The chat the message belongs to
    public let chatId: Int64

    /// New location content of the message; may be null. Pass null to stop sharing the live location
    public let location: Location?

    /// Identifier of the message
    public let messageId: Int64

    /// The new message reply markup; for bots only
    public let replyMarkup: ReplyMarkup


    public init (
        chatId: Int64,
        location: Location?,
        messageId: Int64,
        replyMarkup: ReplyMarkup) {

        self.chatId = chatId
        self.location = location
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

