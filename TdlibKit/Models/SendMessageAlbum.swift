//
//  SendMessageAlbum.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends 2-10 messages grouped together into an album. Currently only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
public struct SendMessageAlbum: Codable {

    /// Target chat
    public let chatId: Int64?

    /// Contents of messages to be sent. At most 10 messages can be added to an album
    public let inputMessageContents: [InputMessageContent]?

    /// If not 0, a message thread identifier in which the messages will be sent
    public let messageThreadId: Int64?

    /// Options to be used to send the messages; pass null to use default options
    public let options: MessageSendOptions?

    /// Identifier of a message to reply to or 0
    public let replyToMessageId: Int64?


    public init(
        chatId: Int64?,
        inputMessageContents: [InputMessageContent]?,
        messageThreadId: Int64?,
        options: MessageSendOptions?,
        replyToMessageId: Int64?
    ) {
        self.chatId = chatId
        self.inputMessageContents = inputMessageContents
        self.messageThreadId = messageThreadId
        self.options = options
        self.replyToMessageId = replyToMessageId
    }
}

