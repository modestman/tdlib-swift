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

    /// Contents of messages to be sent
    public let inputMessageContents: [InputMessageContent]

    /// Options to be used to send the messages
    public let options: SendMessageOptions

    /// Identifier of a message to reply to or 0
    public let replyToMessageId: Int64


    public init (
        chatId: Int64,
        inputMessageContents: [InputMessageContent],
        options: SendMessageOptions,
        replyToMessageId: Int64) {

        self.chatId = chatId
        self.inputMessageContents = inputMessageContents
        self.options = options
        self.replyToMessageId = replyToMessageId
    }
}

