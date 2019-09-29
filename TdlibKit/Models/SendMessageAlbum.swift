//
//  SendMessageAlbum.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends messages grouped together into an album. Currently only photo and video messages can be grouped into an album. Returns sent messages
public struct SendMessageAlbum: Codable {

    /// Target chat
    public let chatId: Int64

    /// Pass true to disable notification for the messages. Not supported in secret chats
    public let disableNotification: Bool

    /// Pass true if the messages are sent from the background
    public let fromBackground: Bool

    /// Contents of messages to be sent
    public let inputMessageContents: [InputMessageContent]

    /// Identifier of a message to reply to or 0
    public let replyToMessageId: Int64


    public init (
        chatId: Int64,
        disableNotification: Bool,
        fromBackground: Bool,
        inputMessageContents: [InputMessageContent],
        replyToMessageId: Int64) {

        self.chatId = chatId
        self.disableNotification = disableNotification
        self.fromBackground = fromBackground
        self.inputMessageContents = inputMessageContents
        self.replyToMessageId = replyToMessageId
    }
}

